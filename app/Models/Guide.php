<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Guide extends Model
{
    protected $table = "guide";

    public function hero()
    {
        return $this->belongsTo('App\Models\Heros','hero_id');
    }

    public function user()
    {
        return $this->belongsTo('App\User','user_id');
    }

    public function detail()
    {
    	return $this->hasMany('App\Models\DetailGuide','guide_id');
    }

    public function subscribe()
    {
        return $this->hasMany('App\Models\Subscribe','guide_id');
    }

    public function getBobotSubscribe($val)
    {
        if($val>100){
            return 100;
        }else if($val>=50 && $val<75){
            return 75;
        }else if($val>=25 && $val<50){
            return 50;
        }else{
            return 10;
        }
    }
    public function getBobotItem($val)
    {
        if($val>=24){
            return 100;
        }else if($val>=20){
            return 75;
        }else if($val>=15){
            return 50;
        }else{
            return 10;
        }
    }
    public function getBobotCost($val)
    {
        if($val<=30000){
            return 100;
        }else if($val>=30000 && $val<50000){
            return 75;
        }else if($val>=50000 && $val<75000){
            return 50;
        }else{
            return 10;
        }
    }
    public function getBobotViews($val)
    {
        if($val>100){
            return 100;
        }else if($val>=50 && $val<85){
            return 75;
        }else if($val>=25 && $val<50){
            return 50;
        }else{
            return 10;
        }
    }
    public function getTotalScore($subscriber, $item, $cost, $views)
    {
        $score = (
            ($this->bobot_total_subscribe*$subscriber/100)+
            ($this->bobot_total_item*$item/100)+
            ($this->bobot_total_cost*$cost/100)+
            ($this->bobot_total_views*$views/100)
            )/4;
        return $score;
    }
}
