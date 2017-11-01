<?php

namespace App\Http\Controllers\Member;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProfileController extends Controller
{
    public function index()
    {
        $model = \Auth::user();
        return view('member.profile.index',[
            'model'=>$model
        ]);
    }

    public function update(Request $request)
    {
        $model = \Auth::user();
        $validator = [
            'name' => 'required|string|max:255',
            'phone' => 'required|alpha_num|max:12',
            'image' => 'image|max:3500'
        ];

        if($request->email === $model->email){
            $validator['email'] = 'required|string|email|max:255';
        }else{
            $validator['email'] = 'required|string|email|max:255|unique:users';
        }

        if($request->password != null){
            $validator['password'] = 'required|string|min:6|confirmed';
            $model->password = bcrypt($request->password);
        }

        $this->validate($request, $validator);

        if ($request->hasFile('image')) {
            $path = base_path('/assets/profile/');
            if(is_file($path.$model->img)){
                unlink($path.$model->img);
            }
            $file = \Image::make($request->file('image'))->resize(600, 600)->encode('jpg', 80)->save($path.md5(str_random(12)).'.jpg');
            $model->img = $file->basename;
        }

        $model->name = $request->name;
        $model->email = $request->email;
        $model->phone = $request->phone;
        $model->save();

        return redirect()->route('admin.profile.manage');
    }
}
