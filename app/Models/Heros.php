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

    public function skill()
    {
        return $this->hasMany('App\Models\Skill','hero_id');
    }

    public function roles()
    {
        return $this->hasMany('App\Models\Roles','hero_id');
    }

    public function getPrimaryAttribute()
    {
        $status = [1=>'Strength',2=>'Agility',3=>'Intelligence'];

        return $status[$this->primary_att];
    }

    public function getAttackType()
    {
        $status = [1=>'Melee',2=>'Range'];
        return $status[$this->atk_type];
    }
}
