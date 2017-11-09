<?php

namespace App\Http\Controllers\Member;

use App\Models\DetailGuide;
use App\Models\Guide;
use App\Models\Subscribe;
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
        $total = \DB::select(\DB::raw('SELECT SUM(i.cost) AS total_cost FROM detail_guide AS dg JOIN items AS i ON i.id = dg.item_id WHERE dg.guide_id = '.$model->id));
        $model->cost = $total[0]->total_cost;
        $model->save();

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

        $total = \DB::select(\DB::raw('SELECT SUM(i.cost) AS total_cost FROM detail_guide AS dg JOIN items AS i ON i.id = dg.item_id WHERE dg.guide_id = '.$model->id));
        $model->cost = $total[0]->total_cost;
        $model->save();


        //Send notif
        foreach (Subscribe::with('user')->where('guide_id',$model->id)->get() as $row){
            $pesan = 'Dear '.$row->user->name.'<br>';
            $pesan.= 'Item Build <b>'.$model->title.'</b> telah di update oleh author silakan klik tombol dibawah untuk melihat detail guide.';
            $data = array(
                'pesan'=>$pesan,
                'link'=>route('home.guide.detail',$model->id),
                'to'=>'wijaya.imd@gmail.com'//$row->user->email
            );

            \Mail::send('email.update', $data, function ($message) use ($data){

                $message->from(env('MAIL_USERNAME'), 'Data2 Item Guide');

                $message->to($data['to'])->subject('Guide Update');

            });
        }

        return redirect()->route('member.guide.manage');
    }
}
