<?php

namespace App;

use App\Http\Controllers\FlashToOld;
use Illuminate\Database\Eloquent\Model;


class Blog extends Model
{
    use \App\CanFillOld;

    protected $fillable = ['title', 'url', 'html_content', 'thumb'];

    protected $attributes = ['url' => '/', 'thumb' => 'No preview'];

}
