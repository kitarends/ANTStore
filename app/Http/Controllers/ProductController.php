<?php

namespace App\Http\Controllers;

use App\Category;
use App\Comment;
use App\Product;
use ClassesWithParents\F;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    use ProcessImage;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manage()
    {
        return view('product.list', ['items' => Product::all(), 'title' => 'Manage products']);
    }

    public function show_home()
    {
        return view('product.list_products', ['products' => Product::query()->paginate(10)]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        (new Product())->fill_olds();

        return view('product.edit');
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
        $product = new Product();

        return $this->process($request, $product);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        $mycomment = null;
        $liked = null;
        if (\Auth::check()) {
            $mycomment = $this->get_my_comment($product);
        }
        $products = Product::where('id', '!=', $product->id)->get();
        $related = $products->random(min($products->count(), 4));
        return view('product.detail', ['item' => $product,
            'comment' => $mycomment,
            'liked' => $liked,
            'title' => $product->name,
            'related' => $related
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $product->fill_olds();

        return view('product.edit', ['item' => $product]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product = Product::findOrFail($id);

        return $this->process($request, $product);
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
        Product::destroy($id);

        return redirect('/manage/products');
    }

    protected function process(Request $request, Product $product)
    {
        $request->validate([
            'name' => 'required|string',
            'category_id' => 'required',
            'short_detail' => 'required',
            'full_html_detail' => 'required',
            'price' => 'required|numeric',
            'sale_off' => 'required|numeric',

        ]);
        $product->fill($request->all());

        if ($request->files->has('image')) {
            $urls = '';
            foreach ($request->files->get('image') as $file) {
                $path = $this->process_image($file);
                $urls .= $path . ';';
            }
            $product->image_urls = $urls;
        } else if (is_null($product->image_urls)) {
            $product->image_url = 'no-thumbnail.png';
        }
        $product->save();

        return redirect('/manage/products');
    }

    public function save_comment(Request $request, $product_id)
    {

        $request->validate([
            'content' => 'required|string',
            'score' => 'required|numeric'
        ]);
        $comment = $this->get_my_comment(Product::findOrFail($product_id));
        if ($comment == null) {
            $comment = new Comment();
        }

        $comment->fill($request->all());
        $comment->user_id = \Auth::id();
        $comment->product_id = $product_id;
        $comment->save();

        return redirect('/products/' . $product_id);
    }

    protected function get_my_comment($product)
    {
        $mycomment = null;
        foreach ($product->comments as $comment) {
            if ($comment->user->id == \Auth::id()) {
                $mycomment = $comment;
                break;
            }
        }

        return $mycomment;
    }

    public function like_product(Request $request, $product_id)
    {
        \Auth::user()->liked_products()->attach($product_id);

        return redirect('/products/' . $product_id);
    }

    public function dislike_product(Request $request, $product_id)
    {
        \Auth::user()->liked_products()->detach($product_id);

        return redirect('/products/' . $product_id);
    }
}
