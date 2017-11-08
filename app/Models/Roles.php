<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Roles extends Model
{
    protected $table = "roles";

    public function getRole()
    {
        $status = [1=>'Carry','Support','Ganker','Nuker','Offlaner'];
        return $status[$this->role];
    }
}
