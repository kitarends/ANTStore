<?php

namespace App;

use App\Http\Controllers\FlashToOld;
use Illuminate\Database\Eloquent\Model;

class Ads extends Model
{
    protected $fillable = [ 'url' ];


    public function fill_olds( ) {
        FlashToOld::flash_to_olds( $this, $this->fillable );
    }
}
