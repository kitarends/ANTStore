<?php

namespace App\Http\Controllers;

use App\Ads;
use Illuminate\Http\Request;

class AdsController extends Controller
{
    use ProcessImage;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manage()
    {
        return view('ads.list', ['items' => Ads::all(), 'title' => 'Manage ads']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        (new Ads())->fill_olds();
        return view('ads.edit', ['title' => 'Create new ads']);
    }

    /**
     * Store a newly created resource in storage.
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
     * Display the specified resource.
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
     * Show the form for editing the specified resource.
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
     * Update the specified resource in storage.
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
     * Remove the specified resource from storage.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    }

    public function delete($id)
    {
        Ads::destroy($id);
        return redirect('/manage/ads');
    }
}
