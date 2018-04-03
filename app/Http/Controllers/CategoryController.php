<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manage()
    {
        return view('category.list', ['items' => Category::all(), 'title' => 'Manage categories']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        (new Category())->fill_olds();
        FlashToOld::flash_to_old(Category::pluck('sort')->max() + 1, 'sort');

        return view('category.edit', ['title' => 'Create new category']);
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
                'name' => 'required|unique:categories|max:255'
            ]
        );
        $category = new Category();
        $category->fill($request->all());
        $category->save();

        return redirect('/manage/categories');

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
        $category = Category::findOrFail($id);

        return view('product.list', [
            'products' => $category->products()->paginate(10),
            'title' => $category->name
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        $category->fill_olds();

        return view('category.edit', ['item' => $category, 'title' => 'Create new category']);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $request->validate(
            [
                'name' => 'required|unique:categories|max:255'
            ]
        );
        $category->fill($request->all());
        $category->save();

        return redirect('/manage/categories');
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
        Category::destroy($id);
        return redirect('/manage/categories');
    }
}
