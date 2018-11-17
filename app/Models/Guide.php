<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

const BOBOT_SUBSCRIBER = 40;
const BOBOT_VIEWS = 30;
const BOBOT_TOTAL_ITEM = 15;
const BOBOT_HARGA_ITEM = 15;

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

    public function getNormalisasiSubscribe($val)
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
    public function getNormalisasiItem($val)
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
    public function getNormalisasiCost($val)
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
    public function getNormalisasiViews($val)
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
    public function getUtilityScore($cout)
    {
    	$cmin = 10;
    	$cmax = 100;
    	$utility = 100*(($cout-$cmin)/($cmax-$cmin));

    	return $utility;
    }
    public function getTotalScore($subscriber, $item, $cost, $views)
    {

    	$normalisasi_subscriber = $this->getNormalisasiSubscribe( $subscriber );
	    $normalisasi_item = $this->getNormalisasiItem( $item );
	    $normalisasi_cost = $this->getNormalisasiCost( $cost );
	    $normalisasi_views = $this->getNormalisasiViews( $views );

	    $utility_subscriber = $this->getUtilityScore( $normalisasi_subscriber );
	    $utility_item = $this->getUtilityScore( $normalisasi_item );
	    $utility_cost = $this->getUtilityScore( $normalisasi_cost );
	    $utility_views = $this->getUtilityScore( $normalisasi_views );

	    $hasil_subscriber = $utility_subscriber*(BOBOT_SUBSCRIBER/100);
	    $hasil_item = $utility_item*(BOBOT_TOTAL_ITEM/100);
	    $hasil_cost = $utility_cost*(BOBOT_HARGA_ITEM/100);
	    $hasil_views = $utility_views*(BOBOT_VIEWS/100);

	    $this->score_subscriber = $hasil_subscriber;
	    $this->score_item = $hasil_item;
	    $this->score_cost = $hasil_cost;
	    $this->score_views = $hasil_views;

        $score = $hasil_subscriber+$hasil_item+$hasil_cost+$hasil_views;

        return $score;
    }
}
