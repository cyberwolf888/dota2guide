<?php

namespace App\Http\Controllers\Member;

use App\Models\Guide;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GuideController extends Controller
{
    public function index()
    {
        $model = Guide::where('user_id',\Auth::user()->id)->get();
        return view('member.guide.manage',['model'=>$model]);
    }

    public function create()
    {
        $model = new Guide();
        return view('member.guide.form',['model'=>$model]);
    }
}
