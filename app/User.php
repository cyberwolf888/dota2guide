<?php

namespace App;

use App\Models\Subscribe;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'phone', 'type', 'isActive'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function getStatus()
    {
        $status = [1=>'Aktif',0=>'Tidak Aktif'];

        return $status[$this->isActive];
    }

    public function isSubscribe($id)
    {
        $check = Subscribe::where('user_id',$this->id)->where('guide_id',$id)->count();

        return $check > 0 ? true : false;
    }
}
