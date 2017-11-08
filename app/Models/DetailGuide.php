<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DetailGuide extends Model
{
    protected $table = "detail_guide";

    public function item()
    {
    	return $this->belongsTo('App\Models\Items','item_id');
    }
}
