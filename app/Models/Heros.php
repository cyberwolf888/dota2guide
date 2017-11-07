<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Heros extends Model
{
    protected $table = "heros";

    public function guide()
    {
        return $this->hasMany('App\Models\Guide','hero_id');
    }
}
