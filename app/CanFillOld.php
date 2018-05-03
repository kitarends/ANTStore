<?php

namespace App;

use App\Http\Controllers\FlashToOld;

trait  CanFillOld
{
    public function fill_olds()
    {
        if (null == \Session::get('errors'))
            FlashToOld::flash_to_olds($this, $this->fillable);
    }
}