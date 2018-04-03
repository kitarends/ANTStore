<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {

        if ($request->has('category')) {
            $products = Product::whereCategoryId($request->get('category'));
        } elseif ($request->has('sale_off')) {
            $products = Product::whereRaw('price > sale_off');
        } else if ($request->has('query')) {
            $query = $request->get('query');
            FlashToOld::flash_to_old($query, 'query');
            $products = Product::query()->where('name', 'LIKE', '%' . $query . '%');
        } else
            $products = Product::query();


        return view('search.index', ['products' => $products->paginate(12)]);
    }
}
