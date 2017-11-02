<?php

namespace App\Http\Controllers\Member;

use App\Models\DetailGuide;
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

    public function store(Request $request)
    {
        //dd($request->all());
        $this->validate($request, [
            'hero_id' => 'required',
            'title' => 'required',
            'description' => 'required',
            'earlygame' => 'required|array|min:1|max:6',
            'coreitem' => 'required|array|min:1|max:6',
            'lategame' => 'required|array|min:1|max:6',
            'exstraitem' => 'required|array|min:1|max:6'
        ]);

        $model = new Guide();
        $model->user_id = \Auth::user()->id;
        $model->hero_id = $request->hero_id;
        $model->title = $request->title;
        $model->description = $request->description;
        $model->status = 1;
        $model->save();

        foreach ($request->earlygame as $row){
            $detail = new DetailGuide();
            $detail->guide_id = $model->id;
            $detail->item_id = $row;
            $detail->tab = 1;
            $detail->save();
        }

        foreach ($request->coreitem as $row){
            $detail = new DetailGuide();
            $detail->guide_id = $model->id;
            $detail->item_id = $row;
            $detail->tab = 2;
            $detail->save();
        }

        foreach ($request->lategame as $row){
            $detail = new DetailGuide();
            $detail->guide_id = $model->id;
            $detail->item_id = $row;
            $detail->tab = 3;
            $detail->save();
        }

        foreach ($request->exstraitem as $row){
            $detail = new DetailGuide();
            $detail->guide_id = $model->id;
            $detail->item_id = $row;
            $detail->tab = 4;
            $detail->save();
        }

        return redirect()->route('member.guide.manage');
    }

    public function edit($id)
    {
        $model = Guide::find($id);
        return view('member.guide.form',['model'=>$model,'update'=>true]);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'hero_id' => 'required',
            'title' => 'required',
            'description' => 'required',
            'earlygame' => 'required|array|min:1|max:6',
            'coreitem' => 'required|array|min:1|max:6',
            'lategame' => 'required|array|min:1|max:6',
            'exstraitem' => 'required|array|min:1|max:6'
        ]);

        $model = Guide::find($id);
        $model->hero_id = $request->hero_id;
        $model->title = $request->title;
        $model->description = $request->description;
        $model->save();

        DetailGuide::where('guide_id',$model->id)->delete();
        foreach ($request->earlygame as $row){
            $detail = new DetailGuide();
            $detail->guide_id = $model->id;
            $detail->item_id = $row;
            $detail->tab = 1;
            $detail->save();
        }

        foreach ($request->coreitem as $row){
            $detail = new DetailGuide();
            $detail->guide_id = $model->id;
            $detail->item_id = $row;
            $detail->tab = 2;
            $detail->save();
        }

        foreach ($request->lategame as $row){
            $detail = new DetailGuide();
            $detail->guide_id = $model->id;
            $detail->item_id = $row;
            $detail->tab = 3;
            $detail->save();
        }

        foreach ($request->exstraitem as $row){
            $detail = new DetailGuide();
            $detail->guide_id = $model->id;
            $detail->item_id = $row;
            $detail->tab = 4;
            $detail->save();
        }

        return redirect()->route('member.guide.manage');
    }
}
