<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use PhpParser\Node\Expr\Array_;
use PragmaRX\Tracker\Support\Minutes;

class StatisticsController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('start')) {
            $start = $request->get('start');
        } else {
            $start = 'today';
        }
        $start = new Carbon($start);


        if ($request->has('end')) {
            $end = $request->get('end');
        } else {
            $end = 'today';
        }
        $end = new Carbon($end);
        $end = $end->addDay(1);
        $end = $end->addMinute(-1);
        FlashToOld::flash_to_old($start->format('M d, Y'), 'start');
        FlashToOld::flash_to_old($end->format('M d, Y'), 'end');

        $minutes = new Minutes();
        $minutes->setStart($start);
        $minutes->setEnd($end);

        $visits = \Tracker::pageViews($minutes);
        return view('stat.visits', ['visits' => $visits, 'title' => 'Statistics']);
    }
}
