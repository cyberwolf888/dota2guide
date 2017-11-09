<?php

namespace App\Http\Controllers\Member;

use App\Models\Guide;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        $chart = '[';
        for($i=1; $i<=12; $i++){

            $model = Guide::select(\DB::raw('COUNT(s.id) AS total_subscriber'));
            $model->join('subscribe AS s','guide.id','=','s.guide_id');
            $model->whereRaw("guide.user_id = ".\Auth::user()->id." AND MONTH(s.created_at) = ".$i." AND YEAR(s.created_at) = ".date('Y'));
            $total_subscriber = $model->first()->total_subscriber;
            $chart.='['.'"'.strtoupper(date('M', strtotime('01-' . $i . '-2017'))).'",'.$total_subscriber.'],';
        }
        $chart = substr($chart, 0, -1).']';

        $total_subscriber = Guide::select(\DB::raw('COUNT(s.id) AS total_subscriber'))
            ->join('subscribe AS s','guide.id','=','s.guide_id')
            ->whereRaw("guide.user_id = ".\Auth::user()->id)
            ->first()->total_subscriber;

        $total_views = Guide::select(\DB::raw('SUM(views) AS total_views'))->whereRaw("user_id = ".\Auth::user()->id)->first()->total_views;
        $total_guide = Guide::whereRaw("user_id = ".\Auth::user()->id)->count();

        return view('member.dashboard.index',[
            'chart'=>$chart,
            'total_subscriber'=>$total_subscriber,
            'total_views'=>$total_views,
            'total_guide'=>$total_guide
            ]);
    }
}
