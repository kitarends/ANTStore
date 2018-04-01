<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderItem;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;

class CartController extends Controller {

	public function index( Request $request ) {
		$items       = [];
		$item_number = 0;
		$total       = 0;
		if ( $request->cookies->has( 'cart' ) ) {
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

		return view( 'cart.list', [ 'items' => $items, 'total' => $total, 'item_number' => $item_number ] );
	}


	public function add_to_cart( Request $request, $product_id, $number ) {
		$cart = $this->get_cart( $request );
		if ( $cart->has( $product_id ) ) {
			$cart[ $product_id ] += $number;
		} else {
			$cart[ $product_id ] = $number;
		}


		return redirect( '/cart' )->cookie( cookie( 'cart', serialize( $cart ) ) );
	}


	public function remove_from_cart( Request $request, $product_id ) {
		$cart = $this->get_cart( $request );
		unset( $cart[ $product_id ] );
		\Session::put( 'cart', serialize( $cart ) );

		return redirect( '/cart' )->cookie( cookie( 'cart', serialize( $cart ) ) );
	}

	private function getIncartOrder(): Order {
		return \Auth::user()->orders()->firstOrCreate( [ 'status' => 'in_cart' ] );
	}

	public function checkout() {
		$order = $this->getIncartOrder();

		\Session::flash( '_old_input.name', \Auth::user()->name );
		\Session::flash( '_old_input.phone', \Auth::user()->phone );
		\Session::flash( '_old_input.email', \Auth::user()->email );
		\Session::flash( '_old_input.address', \Auth::user()->address );

		return view( 'cart.checkout', [ 'total' => $order->getTotal() ] );
	}

	public function save_checkout( Request $request ) {
		$request->validate( [
			'name'    => 'required',
			'email'   => 'required',
			'phone'   => 'required',
			'address' => 'required',
		] );

		$order = $this->getIncartOrder();
		$order->fill( $request->all() );
		$order->note .= '';
		foreach ( $order->items() as $item ) {
			$item->saveFinalPrice();
		}
		$order->status = 'wait_confirm';
		$order->save();

		return redirect( '/' );
	}

	protected function get_cart( Request $request ): \Illuminate\Support\Collection {
		return collect( unserialize( $request->cookies->get( 'cart', '') ) );
	}

}
