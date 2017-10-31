<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProfileController extends Controller
{

    public function index()
    {
        $model = \Auth::user();
        return view('admin.profile.index',[
            'model'=>$model
        ]);
    }
    public function update(Request $request, $id)
    {
        //
    }
}
