<?php

namespace App;

use App\Http\Controllers\FlashToOld;
use Illuminate\Database\Eloquent\Model;

class Discount extends Model
{
    use \App\CanFillOld;

    protected $fillable = ['name', 'code', 'type', 'discount'];

    const TYPES = ['percent' => 'By percent (%)',
        'total' => 'By money ($)'];
    protected $attributes = ['used_time' => 0];

}
