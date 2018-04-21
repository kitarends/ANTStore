<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use PhpParser\Node\Expr\Array_;

class StatisticsController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('from')) {
            $from = str_replace('_', ' ', $request->get('from'));
        } else {
            $from = 'today';
        }
        $time = new Carbon($from);
        $minutes = $time->diffInMinutes();
        $visits = \Tracker::pageViews($minutes);
//        foreach ($)

        $data=[];
        for ($i=0;$i<1000;$i++) {
            $data[$i]['date'] = $i;
            $data[$i]['total']=rand(20,100);
        }
        return view('stat.visits', ['visits' => collect($data)->filter(function ($value,$key){
            return $value['date']%5==0;
        }), 'title' => 'Statistics', 'from' => $from]);
    }
}
