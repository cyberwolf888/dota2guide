<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    protected $table = "skill";

    public function getCastingMethod()
    {
        $status = [1=>'Active',2=>'Pasive'];
        return $status[$this->casting_method];
    }

    public function getTargettingMethod()
    {
        $status = [1=>'Point',2=>'Area',3=>'Unit'];
        return $status[$this->targetting_method];
    }

    public function getAllowedTarget()
    {
        $status = [1=>'Enemy Unit',2=>'Ally Unit',3=>'Free'];
        return $status[$this->allowed_targets];
    }
}
