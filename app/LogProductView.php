<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogProductView extends Model
{
    protected $fillable = ['day'];
    public $timestamps = false;

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
