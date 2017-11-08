<?php

namespace App\Http\Controllers;

use App\Models\Guide;
use App\Models\Heros;
use App\Models\Items;
use App\Models\Skill;
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
        return view('frontend.heropoedia',['model'=>$model]);
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
        return view('frontend.detail_guide',['model'=>$model]);
    }
}
