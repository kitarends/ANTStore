<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;

class OrderController extends Controller {

	public function all() {
		$orders = \Auth::user()->orders;

		return view( 'order.all', [ 'items' => $orders ] );
	}

	public function manage() {
		$orders = Order::all();

		return view( 'order.manage.all', [ 'items' => $orders ] );
	}


	public function show( Request $request, $id ) {
		$order = Order::findOrFail( $id );

		return view( 'order.detail', [
			'item'  => $order,
			'items' => $order->items,
			'total' => $order->getFinalTotal()
		] );
	}

	public function dispose( $id ) {
		$order = Order::findOrFail( $id );
		if ( \Auth::id() == $order->user_id || \Auth::user()->is_admin ) {
			$order->status = 'disposed';
			$order->save();

			return redirect( '/orders/' . $id );
		}

		return redirect( '/' . $id );
	}

	public function confirm( $id ) {
		$order         = Order::findOrFail( $id );
		$order->status = 'confirmed';
		$order->save();

		return redirect( '/orders/' . $id );
	}

	public function ship( $id ) {
		$order         = Order::findOrFail( $id );
		$order->status = 'shipped';
		$order->save();

		return redirect( '/orders/' . $id );
	}

	public function done( $id ) {
		$order         = Order::findOrFail( $id );
		$order->status = 'done';
		$order->save();

		return redirect( '/orders/' . $id );
	}


}
