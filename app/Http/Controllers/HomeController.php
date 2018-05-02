<?php

namespace App\Http\Controllers;

use App\LogProductSold;
use App\LogProductView;
use Carbon\Carbon;
use Hamcrest\Core\Set;
use Illuminate\Http\Request;
use Setting;

class HomeController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [];
        $data['top_views'] = LogProductView::query()
            ->where('day', '>=', (new Carbon('yesterday'))->timestamp)
            ->orderByDesc('views')
            ->get()->take(4);
        $data['top_sold'] = LogProductSold::query()
            ->where('day', '>=', (new Carbon('yesterday'))->timestamp)
            ->orderByDesc('solds')
            ->take(4)
            ->get();
        return view('home.home', $data);
    }
}
