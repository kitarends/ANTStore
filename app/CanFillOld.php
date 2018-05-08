<?php

namespace App;

use App\Http\Controllers\FlashToOld;

trait  CanFillOld
{
    //helps controllers refill old input value from model in edit page
    public function fill_olds()
    {
        //if there're no error we will take values from database
        if (null == \Session::get('errors'))
            FlashToOld::flash_to_olds($this, $this->fillable);
    }
}