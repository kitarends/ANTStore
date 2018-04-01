<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderItem;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use phpDocumentor\Reflection\DocBlock\Tags\See;

class CartController extends Controller {

	public function index( Request $request ) {
		list( $items, $item_number, $total ) = $this->get_cart_items( $request );

		return view( 'cart.list', [
			'items'       => $items,
			'total'       => $total,
			'item_number' => $item_number,
			'title'       => 'Cart'
		] );
	}


	public function add_to_cart( Request $request, $product_id, $number ) {
		$cart = $this->get_cart( $request );
		if ( $cart->has( $product_id ) ) {
			$cart[ $product_id ] += $number;
		} else {
			$cart[ $product_id ] = $number;
		}

		\Session::flash( 'message', 'Added to cart!' );

		return redirect( '/cart' )->cookie( cookie( 'cart', serialize( $cart ) ) );
	}


	public function remove_from_cart( Request $request, $product_id ) {
		$cart = $this->get_cart( $request );
		unset( $cart[ $product_id ] );
		\Session::put( 'cart', serialize( $cart ) );
		\Session::flash( 'message', 'Removed from cart!' );

		return redirect( '/cart' )->cookie( cookie( 'cart', serialize( $cart ) ) );
	}


	public function checkout( Request $request ) {
		list( $items, $item_number, $total ) = $this->get_cart_items( $request );
		if ( $item_number == 0 ) {
			\Session::flash( 'message', 'Nothing to checkout!' );

			return redirect( '/cart' );
		}
		if ( \Auth::check() ) {
			\Session::flash( '_old_input.name', \Auth::user()->name );
			\Session::flash( '_old_input.phone', \Auth::user()->phone );
			\Session::flash( '_old_input.email', \Auth::user()->email );
			\Session::flash( '_old_input.address', \Auth::user()->address );
		}

		return view( 'cart.checkout', [ 'title' => 'Checkout' ] );
	}

	public function save_checkout( Request $request ) {
		$request->validate( [
			'name'    => 'required',
			'email'   => 'required',
			'phone'   => 'required',
			'address' => 'required',
		] );
		list( $items, $item_number, $total ) = $this->get_cart_items( $request );

		$order = new Order();
		if ( \Auth::check() ) {
			$order->user_id = \Auth::id();
		} else {
			$order->user_id = null;
		}
		$order->fill( $request->all() );
		$order->note   .= '';
		$order->status = 'wait_confirm';
		$order->save();

		foreach ( $items as $item ) {
			$order_item             = new OrderItem();
			$order_item->product_id = $item['product']->id;
			$order_item->quantity   = $item['quantity'];
			$order_item->saveFinalPrice();
			$order_item->order_id = $order->id;
			$order_item->save();
		}

		\Session::flash( 'message', 'Checked out, thank you!' );

		return redirect( '/' )->cookie( cookie( 'cart', null ) );
	}

	protected function get_cart( Request $request ): \Illuminate\Support\Collection {
		return collect( unserialize( $request->cookies->get( 'cart', '' ) ) );
	}

	protected function get_cart_items( Request $request ): array {
		$items       = [];
		$item_number = 0;
		$total       = 0;
		if ( $request->cookies->has( 'cart' ) && $request->cookies->get( 'cart' ) !=null) {
			$cart = unserialize( $request->cookie( 'cart' ) );
			foreach ( $cart as $product_id => $quantity ) {
				if ( Product::whereId( $product_id )->count() > 0 ) {
					$product              = Product::findOrFail( $product_id );
					$items[ $product_id ] = [
						'product'  => $product,
						'quantity' => $quantity
					];
					$item_number          += $quantity;
					$total                += $product->price * $quantity;
				}
			}
		}

		return array( $items, $item_number, $total );
	}

}
