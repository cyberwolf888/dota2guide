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
}
