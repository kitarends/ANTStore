<?php

namespace App\Http\Controllers;

use App\Ads;
use Illuminate\Http\Request;

class AdsController extends Controller
{
    use ProcessImage;
    /**
     * Display a listing of the advertise.
     *
     * @return \Illuminate\Http\Response
     */
    public function manage()
    {
        return view('ads.list', ['items' => Ads::all(), 'title' => 'Manage ads']);
    }

    /**
     * Show the form for creating a new advertise.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        (new Ads())->fill_olds();
        return view('ads.edit', ['title' => 'Create new ads']);
    }

    /**
     * Store a newly created advertise in storage.
     *
     * @param  \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(
            [
                'url' => 'required',
                'image'=>'required'
            ]
        );
        $ads = new Ads();
        $ads->fill($request->all());
        $ads->image=$this->process_image($request->file('image'));
        $ads->save();

        return redirect('/manage/ads');

    }

    /**
     * Display the specified advertise.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $ads = Ads::findOrFail($id);

        return redirect($ads->url);
    }

    /**
     * Show the form for editing the specified advertise.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($ads_id)
    {
        $ads=Ads::findOrFail($ads_id);
        $ads->fill_olds();

        return view('ads.edit', ['item' => $ads, 'title' => 'Edit ads']);
    }

    /**
     * Update the specified advertise in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $ads_id)
    {
        $ads=Ads::findOrFail($ads_id);

        $request->validate(
            [
                'url' => 'required',
                'image' => 'required'
            ]
        );
        $ads->fill($request->all());
        $ads->image=$this->process_image($request->file('image'));
        $ads->save();

        return redirect('/manage/ads');
    }

    /**
     * Remove the specified advertise from storage.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    }

    //more friendly way to delete a advertise
    public function delete($id)
    {
        Ads::destroy($id);
        return redirect('/manage/ads');
    }
}
