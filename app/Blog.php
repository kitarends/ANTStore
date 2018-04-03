<?php

namespace App;

use App\Http\Controllers\FlashToOld;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $fillable = [ 'title','url', 'html_content' ,'thumb'];

    protected $attributes=['url'=>'/','thumb'=>'No preview'];

    public function fill_olds( ) {
        FlashToOld::flash_to_olds( $this, $this->fillable );
    }
}
