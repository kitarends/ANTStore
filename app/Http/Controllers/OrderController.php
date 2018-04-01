<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;

class OrderController extends Controller {

	public function all() {
		$orders = \Auth::user()->orders;

		return view( 'order.all', [ 'items' => $orders ] );
	}



	public function show( Request $request, $id ) {
		$order = Order::findOrFail( $id );

		return view( 'order.list', [ 'items' => $order->items ,'total'=>$order->getTotal()] );

	}
}
