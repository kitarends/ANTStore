<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model {
	protected $fillable = [ 'product_id' ];
	protected $attributes = [
		'quantity'    => 0,
		'final_price' => 0
	];

	public function product() {
		return $this->belongsTo( 'App\\Product' );
	}

	public function saveFinalPrice() {
		$this->final_price = $this->product->getCost();
	}
}
