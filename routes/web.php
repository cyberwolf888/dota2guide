<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
Route::get('/heropedia', 'HomeController@heropedia')->name('home.heropedia');
Route::post('/heropedia/search', 'HomeController@search_hero')->name('home.heropedia.search');
Route::get('/itempedia', 'HomeController@itempedia')->name('home.itempedia');
Route::post('/itempedia/search', 'HomeController@search_item')->name('home.itempedia.search');
Route::get('/hero/{id}', 'HomeController@hero_detail')->name('home.hero.detail');
Route::get('/item/{id}', 'HomeController@item_detail')->name('home.item.detail');
Route::get('/skill/{id}', 'HomeController@skill_detail')->name('home.skill.detail');
Route::get('/guide/{id}', 'HomeController@guide_detail')->name('home.guide.detail');
Route::get('/subscribe/{id}', 'HomeController@subscribe')->middleware(['auth','role:member-access'])->name('home.subscribe');
Route::get('/unsubscribe/{id}', 'HomeController@unsubscribe')->middleware(['auth','role:member-access'])->name('home.unsubscribe');
Route::get('/search', 'HomeController@search')->name('home.search');


//Admin
Route::group(['prefix' => 'admin', 'middleware' => ['auth','role:admin-access'], 'as'=>'admin'], function() {

    //Dashboard
    Route::get('/', 'Admin\DashboardController@index')->name('.dashboard');

    //Hero
    Route::group(['prefix' => 'hero', 'as'=>'.hero'], function() {
        Route::get('/', 'Admin\HeroController@index')->name('.manage');
        Route::get('/create', 'Admin\HeroController@create')->name('.create');
        Route::post('/create', 'Admin\HeroController@store')->name('.store');
        Route::get('/edit/{id}', 'Admin\HeroController@edit')->name('.edit');
        Route::post('/edit/{id}', 'Admin\HeroController@update')->name('.update');
        Route::get('/skill/{id}', 'Admin\HeroController@skill')->name('.skill');
        Route::get('/skill/{id}/create', 'Admin\HeroController@skill_create')->name('.skill_create');
        Route::post('/skill/{id}/create', 'Admin\HeroController@skill_store')->name('.skill_store');
        Route::get('/skill/{hero}/edit/{id}', 'Admin\HeroController@skill_edit')->name('.skill_edit');
        Route::post('/skill/{hero}/edit/{id}', 'Admin\HeroController@skill_update')->name('.skill_update');
    });

    //Item
    Route::group(['prefix' => 'item', 'as'=>'.item'], function() {
        Route::get('/', 'Admin\ItemController@index')->name('.manage');
        Route::get('/create', 'Admin\ItemController@create')->name('.create');
        Route::post('/create', 'Admin\ItemController@store')->name('.store');
        Route::get('/edit/{id}', 'Admin\ItemController@edit')->name('.edit');
        Route::post('/edit/{id}', 'Admin\ItemController@update')->name('.update');
    });

    //Users
    Route::group(['prefix' => 'user', 'middleware' => ['auth','role:admin-access'], 'as'=>'.user'], function() {

        Route::group(['prefix' => 'admin', 'middleware' => ['auth','role:admin-access'], 'as'=>'.admin'], function() {
            Route::get('/', 'Admin\UserController@admin')->name('.manage');
            Route::get('/create', 'Admin\UserController@create_admin')->name('.create');
            Route::post('/store', 'Admin\UserController@store_admin')->name('.store');
            Route::get('/edit/{id}', 'Admin\UserController@edit_admin')->name('.edit');
            Route::post('/update/{id}', 'Admin\UserController@update_admin')->name('.update');
        });

        Route::group(['prefix' => 'member', 'middleware' => ['auth','role:admin-access'], 'as'=>'.member'], function() {
            Route::get('/', 'Admin\UserController@member')->name('.manage');
            Route::get('/create', 'Admin\UserController@create_member')->name('.create');
            Route::post('/store', 'Admin\UserController@store_member')->name('.store');
            Route::get('/edit/{id}', 'Admin\UserController@edit_member')->name('.edit');
            Route::post('/update/{id}', 'Admin\UserController@update_member')->name('.update');
        });
    });

    //Profile
    Route::group(['prefix' => 'profile', 'as'=>'.profile'], function() {
        Route::get('/', 'Admin\ProfileController@index')->name('.manage');
        Route::post('/', 'Admin\ProfileController@update')->name('.update');
    });

});


//Member
Route::group(['prefix' => 'member', 'middleware' => ['auth','role:member-access'], 'as'=>'member'], function() {

    //Dashboard
    Route::get('/', 'Member\DashboardController@index')->name('.dashboard');

    //Guide
    Route::group(['prefix' => 'guide', 'as'=>'.guide'], function() {
        Route::get('/', 'Member\GuideController@index')->name('.manage');
        Route::get('/create', 'Member\GuideController@create')->name('.create');
        Route::post('/create', 'Member\GuideController@store')->name('.store');
        Route::get('/edit/{id}', 'Member\GuideController@edit')->name('.edit');
        Route::post('/edit/{id}', 'Member\GuideController@update')->name('.update');
    });

    //Profile
    Route::group(['prefix' => 'profile', 'as'=>'.profile'], function() {
        Route::get('/', 'Member\ProfileController@index')->name('.manage');
        Route::post('/', 'Member\ProfileController@update')->name('.update');
    });
});


Route::get('/data', function () {

    //$json = json_decode(file_get_contents('https://api.steampowered.com/IEconDOTA2_570/GetHeroes/v0001/?key=0D0E7F2E376DC6786F574E591F4CE6D1'), true);
    $items = json_decode(file_get_contents('https://api.steampowered.com/IEconDOTA2_570/GetGameItems/v0001/?key=0D0E7F2E376DC6786F574E591F4CE6D1'), true);
    //return view('welcome')->with(['json'=>$json,'items'=>$items]);
    /*foreach ($json['result']['heroes'] as $hero){
        $model = new \App\Models\Heros();
        $name = str_replace('npc_dota_hero_','',$hero['name']);
        $model->name = ucwords(str_replace('_', ' ', $name));
        $model->img = "http://cdn.dota2.com/apps/dota2/images/heroes/".str_replace('npc_dota_hero_','',$hero['name'])."_lg.png";
        $model->save();
    }*/

    foreach ($items['result']['items'] as $item){
        if($item['cost']>0){
            if($item['recipe'] != 1){
                $model = new \App\Models\Items();
                $name = str_replace('item_','',$item['name']);
                $model->name = ucwords(str_replace('_', ' ', $name));
                $model->img = "http://cdn.dota2.com/apps/dota2/images/items/".$name."_lg.png";
                $model->cost = $item['cost'];
                $model->save();
            }

        }
    }
});
