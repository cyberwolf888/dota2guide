<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subscribe extends Model
{
    protected $table = "subscribe";

    public function user()
    {
        return $this->belongsTo('App\User','user_id');
    }
}
