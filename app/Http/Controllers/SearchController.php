<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {

        if ($request->has('category')) {
            $category_id = $request->get('category');
            $products = Product::whereCategoryId($category_id);
            $title = Category::findOrFail($category_id)->name . ' category';
        } elseif ($request->has('sale_off')) {
            $products = Product::whereRaw('price > sale_off');
            $title = 'Sale off';
        } else if ($request->has('query')) {
            $query = $request->get('query');
            FlashToOld::flash_to_old($query, 'query');
            $products = Product::query()->where('name', 'LIKE', '%' . $query . '%');
            $title = 'Result of searching for "' . $query . '"';
        } else {
            $products = Product::query();
            $title='All products availble';
        }


        return view('search.index', ['products' => $products->paginate(12), 'title' => $title]);
    }
}
