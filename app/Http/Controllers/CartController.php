<?php

namespace App\Http\Controllers;

use App\Discount;
use App\Order;
use App\OrderItem;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Mail;
use phpDocumentor\Reflection\DocBlock\Tags\See;

class CartController extends Controller
{

    //show current incart products
    public function index(Request $request)
    {
        list($items,        //all cart's items
            $item_number,  //number of items
            $total         //total price
            ) = $this->get_cart_items($request); //get taken products

        return view('cart.list', [ //show the view with data
            'items' => $items,
            'total' => $total,
            'item_number' => $item_number,
            'title' => 'Cart'
        ]);

    }


    //add new product with number of product to cart
    public function add_to_cart(Request $request, $product_id, $number)
    {
        $cart = $this->get_cart($request);
        if ($cart->has($product_id)) {  //if this product existed in cart, just add the number
            $cart[$product_id] += $number;
        } else {
            $cart[$product_id] = $number; //else create new product in cart
        }

        \Session::flash('message', 'Added to cart!');

        return redirect('/cart')->cookie(cookie('cart', serialize($cart)));
    }


    //remove product form cart
    public function remove_from_cart(Request $request, $product_id)
    {
        $cart = $this->get_cart($request);
        unset($cart[$product_id]); //delete product from cart
        \Session::flash('message', 'Removed from cart!');

        return redirect('/cart')->cookie(cookie('cart', serialize($cart)));
    }

    //checkout page
    public function checkout(Request $request)
    {
        list($items, $item_number, $total) = $this->get_cart_items($request);
        if ($item_number == 0) {
            \Session::flash('message', 'Nothing to checkout!');

            return redirect('/cart');
        }
//        if (!\Session::has('errors'))
        if (\Auth::check()) {
            FlashToOld::flash_to_olds(\Auth::user(), ['name', 'phone', 'email', 'address']);
        }
        list($items, $item_number, $total) = $this->get_cart_items($request);


        return view('cart.checkout', [
            'title' => 'Checkout',
            'items' => $items,
            'total' => $total,
            'discounted' => $this->get_discounted($total),
            'item_number' => $item_number,]);
    }

    protected function get_discounted($total)
    {
        $discounted = $total;

        if (\Session::has('code')) {
            $query = Discount::whereCode(\Session::get('code'));
            if ($query->count() != 1) {
                \Session::flash('message', 'Discount code is invalid!');
                \Session::remove('code');
                \Session::remove('discount');
                return redirect('/cart');
            } else {
                $discount = $query->get()[0];
                if ($discount->type == 'percent')
                    $discounted = $total * (100 - $discount->discount) / 100;
                elseif ($discount->type == 'total')
                    $discounted = $total - $discount->discount;
            }
        }
        return $discounted;
    }

    public function save_checkout(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|min:10|numeric',
            'address' => 'required',
        ]);
        list($items, $item_number, $total) = $this->get_cart_items($request);

        $order = new Order();

        if ($request->get('user_id') != null) {
            $order->user_id = $request->get('user_id');
        } else if (\Auth::check()) {
            $order->user_id = \Auth::id();
        } else {
            $order->user_id = null;
        }
        $order->fill($request->all());
        $order->note .= '';
        $order->status = 'wait_confirm';

        $discounted = $this->get_discounted($total);
        if ($discounted < $total) {
            $order->used_discount_code = \Session::get('code');
            $order->discounted_price = $discounted;
        }
        $order->save();

        foreach ($items as $item) {
            $order_item = new OrderItem();
            $order_item->product_id = $item['product']->id;
            $order_item->quantity = $item['quantity'];
            $order_item->saveFinalPrice();
            $order_item->order_id = $order->id;
            $order_item->save();
        }

        \Session::flash('message', 'Checked out, thank you!');
        \Session::remove('code');
        \Session::remove('discount');
        Mail::to($order->email)->queue(new \App\Mail\OrderShipped($order));
        return redirect('/')->cookie(cookie('cart', null));
    }

    //decode cart's data from cokkies
    protected function get_cart(Request $request): \Illuminate\Support\Collection
    {
        return collect(unserialize($request->cookies->get('cart', '')));
    }

    //decode and process data in cart
    protected function get_cart_items(Request $request): array
    {
        $items = [];
        $item_number = 0;
        $total = 0;
        if ($request->cookies->has('cart') && $request->cookies->get('cart') != null) {
            $cart = unserialize($request->cookie('cart'));
            foreach ($cart as $product_id => $quantity) {
                if (Product::whereId($product_id)->count() > 0) {
                    $product = Product::findOrFail($product_id);
                    $items[$product_id] = [
                        'product' => $product,
                        'quantity' => $quantity
                    ];
                    $item_number += $quantity;
                    $total += min($product->price, $product->sale_off) * $quantity;
                }
            }
        }

        return array($items, $item_number, $total);
    }

    public function apply_discount(Request $request)
    {
        $code = $request->get('discount');
        $query = Discount::whereCode(trim($code));
        if ($query->count() != 1) {
            \Session::flash('message', 'Discount code is invalid!');
            \Session::remove('code');
            \Session::remove('discount');
        } else {
            $discount = $query->get()[0];
            \Session::put('code', $discount->code);
            if ($discount->type == 'percent') {
                \Session::put('discount', '-' . $discount->discount . '%');
            } elseif ($discount->type == 'total') {
                \Session::put('discount', '-' . $discount->discount . '$');
            }
            \Session::flash('message', 'Discount code is applied!');
        }
        return redirect('/cart');
    }
}
