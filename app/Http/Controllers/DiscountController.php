<?php

namespace App\Http\Controllers;

use App\Discount;
use Illuminate\Http\Request;

class DiscountController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manage()
    {
        return view('discount.list', ['items' => Discount::all(), 'title' => 'Manage discounts']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        (new Discount())->fill_olds();

        return view('discount.edit', ['title' => 'Create new discount']);
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
                'name' => 'required|unique:discounts',
                'code'=>'required|unique:discounts',
                'type'=>'required',
                'discount'=>'required|numeric|min:0'

            ]
        );
        $discount = new Discount();
        $discount->fill($request->all());
        $discount->save();

        return redirect('/manage/discounts');

    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Discount $discount)
    {
        $discount->fill_olds();

        return view('discount.edit', ['item' => $discount, 'title' => 'Edit discount']);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Discount $discount)
    {
        $request->validate(
            [
                'name' => 'required'
            ]
        );
        $discount->fill($request->all());
        $discount->save();

        return redirect('/manage/discounts');
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
        Discount::destroy($id);
        return redirect('/manage/discounts');
    }
}
