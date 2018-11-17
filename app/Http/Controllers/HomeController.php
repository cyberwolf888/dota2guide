<?php

namespace App\Http\Controllers;

use App\Models\GuestSubscribe;
use App\Models\Guide;
use App\Models\Heros;
use App\Models\Items;
use App\Models\Skill;
use App\Models\Subscribe;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $populer = \DB::select('SELECT COUNT(hero_id) AS total_guide, h.* 
                                FROM guide AS g 
                                JOIN heros AS h ON g.hero_id = h.id
                                GROUP BY g.hero_id
                                ORDER BY total_guide DESC');
        return view('frontend.home',['populer'=>$populer]);
    }

    public function heropedia()
    {
        $model = Heros::with('guide')->paginate(20);
        return view('frontend.heropedia',['model'=>$model]);
    }

    public function search_hero(Request $request)
    {
        $model = Heros::where('name','like','%'.$request->q.'%')->get();
        return view('frontend.search_hero',['model'=>$model]);
    }

    public function itempedia()
    {
        $model = Items::paginate(20);
        return view('frontend.itempedia',['model'=>$model]);
    }

    public function search_item(Request $request)
    {
        $model = Items::where('name','like','%'.$request->q.'%')->get();
        return view('frontend.search_item',['model'=>$model]);
    }

    public function hero_detail($id)
    {
        $model = Heros::find($id);
        return view('frontend.detail_hero',['model'=>$model]);
    }

    public function item_detail($id)
    {
        $model = Items::find($id);
        return view('frontend.detail_item',['model'=>$model]);
    }

    public function skill_detail($id)
    {
        $model = Skill::find($id);
        return view('frontend.detail_skill',['model'=>$model]);
    }

    public function guide_detail($id)
    {
        $model = Guide::find($id);
        $model->views += 1;
        $model->save();
        return view('frontend.detail_guide',['model'=>$model]);
    }

    public function subscribe($id)
    {
        $model = new Subscribe();
        $model->user_id = \Auth::user()->id;
        $model->guide_id = $id;
        $model->save();

        return redirect()->back();
    }

    public function unsubscribe($id)
    {
        Subscribe::where('guide_id',$id)->where('user_id',\Auth::user()->id)->delete();
        return redirect()->back();
    }

    public function search()
    {
        return view('frontend.search');
    }

    public function search_result(Request $request)
    {
        $model = Guide::select(\DB::raw('guide.*, COUNT(dg.id) AS total_item'));
        $model->join('detail_guide AS dg','guide.id','=','dg.guide_id');
        $model->where('guide.hero_id',$request->hero);
        $model->groupBy('guide.id');
        $guides = $model->get();


        //hitung score dengan SMART
        foreach($guides as $row){
            $row->total_subscribe = count($row->subscribe);

//            $row->bobot_total_subscribe = $row->getBobotSubscribe($row->total_subscribe);
//            $row->bobot_total_item = $row->getBobotItem($row->total_item);
//            $row->bobot_total_cost = $row->getBobotCost($row->cost);
//            $row->bobot_total_views = $row->getBobotViews($row->views);

            $row->total_score = $row->getTotalScore($row->total_subscribe,
	            $row->total_item,
	            $row->cost,
	            $row->views);
        }


        return view('frontend.search_result',['model'=>$guides,'req'=>$request->all()]);
    }

    public function guest_subscribe(Request $request)
    {
        $this->validate($request, [
            'subscribe_email' => 'required|email|max:100|unique:guest_subscribe,email'
        ]);

        $model = new GuestSubscribe();
        $model->email = $request->subscribe_email;
        $model->save();

        return redirect()->back()->with('success','Thanks for subscribe! :)');
    }
}
