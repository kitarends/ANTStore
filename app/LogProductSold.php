<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogProductSold extends Model
{
    protected $fillable = ['day','product_id'];
    public $timestamps = false;

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
