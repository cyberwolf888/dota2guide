<?php

namespace App\Http\Controllers\Admin;

use App\Models\Items;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $model = Items::all();
        return view('admin.item.index',['model'=>$model]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $model = new Items();
        return view('admin.item.form',[
            'model'=>$model
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $model = new Items();
        $validator = [
            'name' => 'required',
            'cost' => 'required',
            'descriptions' => 'required',
            'image' => 'image|max:3500|required'
        ];
        $this->validate($request, $validator);

        $path = base_path('/assets/items/');
        $file = \Image::make($request->file('image'))->resize(300, 300)->encode('jpg', 80)->save($path.md5(str_random(12)).'.jpg');
        $model->img = url('assets/items/'.$file->basename);

        $model->name = $request->name;
        $model->cost = $request->cost;
        $model->descriptions = $request->descriptions;
        $model->save();

        return redirect()->route('admin.item.manage');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $model = Items::find($id);
        return view('admin.item.form',[
            'model'=>$model,
            'update'=>1
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $model = Items::find($id);
        $validator = [
            'name' => 'required',
            'cost' => 'required',
            'descriptions' => 'required',
            'image' => 'image|max:3500'
        ];
        $this->validate($request, $validator);

        if ($request->hasFile('image')) {
            $path = base_path('/assets/items/');
            if(is_file($path.$model->img)){
                unlink($path.$model->img);
            }
            $file = \Image::make($request->file('image'))->resize(300, 300)->encode('jpg', 80)->save($path.md5(str_random(12)).'.jpg');
            $model->img = url('assets/items/'.$file->basename);
        }

        $model->name = $request->name;
        $model->cost = $request->cost;
        $model->descriptions = $request->descriptions;
        $model->save();

        return redirect()->route('admin.item.manage');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
