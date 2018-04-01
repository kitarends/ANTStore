<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Order
 *
 * @property int $id
 * @property int $user_id
 * @property string $phone
 * @property string $address
 * @property string $note
 * @property string $status
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Order whereAddress( $value )
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Order whereCreatedAt( $value )
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Order whereId( $value )
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Order whereNote( $value )
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Order wherePhone( $value )
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Order whereStatus( $value )
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Order whereUpdatedAt( $value )
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Order whereUserId( $value )
 * @mixin \Eloquent
 */
class Order extends Model {
	public static $ORDER_STATUS = [
		'wait_confirm' => 'Wait for comfirm',
		'confirmed'    => 'Confirmed',
		'shipped'     => 'Shipped',
		'done'         => 'Done',
		'disposed'     => 'Disposed'
	];

	protected $attributes = [
		'status'  => 'wait_confirm',
		'phone'   => "00",
		'address' => "none",
		'note'    => 'none',
		'name'    => 'nope',
		'email'   => 'nope'
	];
	protected $fillable = [ 'status', 'name', 'address', 'phone', 'note' ];

	public function items() {
		return $this->hasMany( 'App\\OrderItem' );
	}
	public function user() {
		return $this->belongsTo( 'App\\User' );
	}

	public function getTotal() {
		$total = 0;
		foreach ( $this->items as $item ) {
			$total += $item->product->getCost() * $item->quantity;
		}

		return $total;
	}

	public function getFinalTotal() {
		$total = 0;
		foreach ( $this->items as $item ) {
			$total += $item->final_price * $item->quantity;
		}

		return $total;
	}

	public function getStatus() {
		return Order::$ORDER_STATUS[ $this->status ];
	}

}
