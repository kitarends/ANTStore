<?php

namespace App;

use App\Http\Controllers\FlashToOld;
use Illuminate\Database\Eloquent\Model;

class Ads extends Model
{
    use \App\CanFillOld;

    protected $fillable = [ 'url' ];
}
