<?php

namespace App\Http\Controllers\Admin;

use App\Models\Heros;
use App\Models\Roles;
use App\Models\Skill;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HeroController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $model = Heros::all();
        $roles = [];
        return view('admin.hero.manage',['model'=>$model,'roles'=>$roles]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $model = new Heros();
        $roles = [];
        return view('admin.hero.form',['model'=>$model,'roles'=>$roles]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $model = new Heros();
        $validator = [
            'name' => 'required',
            'faction' => 'required',
            'primary_att' => 'required',
            'atk_type' => 'required',
            'roles' => 'required',
            'strength' => 'required',
            'agility' => 'required',
            'intelligence' => 'required',
            'health' => 'required',
            'mana' => 'required',
            'demage_a' => 'required',
            'demage_b' => 'required',
            'armor' => 'required',
            'evasion' => 'required',
            'mov_speed' => 'required',
            'image' => 'image|max:3500|required'
        ];
        $this->validate($request, $validator);

        $path = base_path('/assets/heros/');
        $file = \Image::make($request->file('image'))->resize(600, 600)->encode('jpg', 80)->save($path.md5(str_random(12)).'.jpg');
        $model->img = url('assets/heros/'.$file->basename);

        $model->name = $request->name;
        $model->faction = $request->faction;
        $model->primary_att = $request->primary_att;
        $model->atk_type = $request->atk_type;
        $model->strength = $request->strength;
        $model->agility = $request->agility;
        $model->intelligence = $request->intelligence;
        $model->health = $request->health;
        $model->mana = $request->mana;
        $model->demage_a = $request->demage_a;
        $model->demage_b = $request->demage_b;
        $model->armor = $request->armor;
        $model->evasion = $request->evasion;
        $model->mov_speed = $request->mov_speed;
        $model->save();

        foreach ($request->roles as $r){
            $role = new Roles();
            $role->hero_id = $model->id;
            $role->role = $r;
            $role->save();
        }

        return redirect()->route('admin.hero.skill',$model->id);
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
        $model = Heros::find($id);
        $roles = [];
        foreach (Roles::where('hero_id',$id)->get() as $r){
            array_push($roles, $r->role);
        }
        return view('admin.hero.form',['model'=>$model,'roles'=>$roles,'update'=>true]);
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
        $model = Heros::find($id);
        $validator = [
            'name' => 'required',
            'faction' => 'required',
            'primary_att' => 'required',
            'atk_type' => 'required',
            'roles' => 'required',
            'strength' => 'required',
            'agility' => 'required',
            'intelligence' => 'required',
            'health' => 'required',
            'mana' => 'required',
            'demage_a' => 'required',
            'demage_b' => 'required',
            'armor' => 'required',
            'evasion' => 'required',
            'mov_speed' => 'required',
            'image' => 'image|max:3500'
        ];
        $this->validate($request, $validator);

        if ($request->hasFile('image')) {
            $path = base_path('/assets/heros/');
            if(is_file($path.$model->img)){
                unlink($path.$model->img);
            }
            $file = \Image::make($request->file('image'))->resize(600, 600)->encode('jpg', 80)->save($path.md5(str_random(12)).'.jpg');
            $model->img = url('assets/heros/'.$file->basename);
        }

        $model->name = $request->name;
        $model->faction = $request->faction;
        $model->primary_att = $request->primary_att;
        $model->atk_type = $request->atk_type;
        $model->strength = $request->strength;
        $model->agility = $request->agility;
        $model->intelligence = $request->intelligence;
        $model->health = $request->health;
        $model->mana = $request->mana;
        $model->demage_a = $request->demage_a;
        $model->demage_b = $request->demage_b;
        $model->armor = $request->armor;
        $model->evasion = $request->evasion;
        $model->mov_speed = $request->mov_speed;
        $model->save();

        $roles = Roles::where('hero_id',$model->id)->get();
        foreach ($roles as $role){
            $role->delete();
        }

        foreach ($request->roles as $r){
            $role = new Roles();
            $role->hero_id = $model->id;
            $role->role = $r;
            $role->save();
        }

        return redirect()->route('admin.hero.manage');
    }

    public function skill($id)
    {
        $model = Skill::where('hero_id',$id)->get();
        return view('admin.hero.skill', ['model'=>$model,'id'=>$id]);
    }
    public function skill_create($id)
    {
        $model = new Skill();
        $hero = Heros::find($id);
        return view('admin.hero.skill_form',['model'=>$model,'hero'=>$hero]);
    }
    public function skill_store(Request $request, $id)
    {
        $validator = [
            'name' => 'required',
            'casting_method' => 'required',
            'descriptions' => 'required',
            'key' => 'required',
            'image' => 'image|max:3500|required'
        ];
        $this->validate($request, $validator);

        $path = base_path('/assets/skills/');
        $file = \Image::make($request->file('image'))->resize(128, 128)->encode('jpg', 90)->save($path.md5(str_random(12)).'.jpg');

        $hero = Heros::find($id);
        $model = new Skill();
        $model->hero_id = $hero->id;
        $model->name = $request->name;
        $model->casting_method = $request->casting_method;
        $model->targetting_method = $request->targetting_method;
        $model->allowed_targets = $request->allowed_targets;
        $model->mana_cost = $request->mana_cost;
        $model->cooldown = $request->cooldown;
        $model->key = $request->key;
        $model->descriptions = $request->descriptions;
        $model->img = $file->basename;
        $model->save();

        return redirect()->route('admin.hero.skill',$hero->id);
    }
    public function skill_edit($hero,$id)
    {
        $model = Skill::find($id);
        $heros = Heros::find($hero);
        return view('admin.hero.skill_form',[
            'model'=>$model,
            'hero'=>$heros,
            'update'=>1
        ]);
    }
    public function skill_update(Request $request,$hero,$id)
    {
        $hero = Heros::find($hero);
        $model = Skill::find($id);

        $validator = [
            'name' => 'required',
            'casting_method' => 'required',
            'descriptions' => 'required',
            'key' => 'required',
            'image' => 'image|max:3500'
        ];
        $this->validate($request, $validator);

        if ($request->hasFile('image')) {
            $path = base_path('/assets/skills/');
            if(is_file($path.$model->img)){
                unlink($path.$model->img);
            }
            $file = \Image::make($request->file('image'))->resize(128, 128)->encode('jpg', 90)->save($path.md5(str_random(12)).'.jpg');
            $model->img = $file->basename;
        }

        $model->hero_id = $hero->id;
        $model->name = $request->name;
        $model->casting_method = $request->casting_method;
        $model->targetting_method = $request->targetting_method;
        $model->allowed_targets = $request->allowed_targets;
        $model->mana_cost = $request->mana_cost;
        $model->cooldown = $request->cooldown;
        $model->key = $request->key;
        $model->descriptions = $request->descriptions;

        $model->save();

        return redirect()->route('admin.hero.skill',$hero->id);
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
