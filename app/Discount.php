<?php

namespace App;

use App\Http\Controllers\FlashToOld;
use Illuminate\Database\Eloquent\Model;

class Discount extends Model
{
    protected $fillable = ['name', 'code', 'type', 'discount'];

    const TYPES = ['percent' => 'By percent (%)',
        'total' => 'By money ($)'];
    protected $attributes = ['used_time' => 0];

    public function fill_olds()
    {
        FlashToOld::flash_to_olds($this, $this->fillable);
    }
}
