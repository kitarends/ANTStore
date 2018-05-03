<?php

namespace App\Http\Controllers;

use App\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    private $validator_rules = [
        'title' => 'required|unique:blogs',
        'html_content' => 'required',
        'thumb' => 'required',
        'url' => 'required'
    ];

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('blog.index', ['title' => 'All blogs', 'blogs' => \App\Blog::query()->paginate(10)]);
    }

    public function manage()
    {
        return view('blog.list', ['items' => Blog::all(), 'title' => 'Manage blog']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        (new Blog())->fill_olds();

        return view('blog.edit', ['title' => 'Create new post']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(
            $this->validator_rules
        );
        $blog = new Blog();
        $blog->fill($request->all());
        $blog->save();

        return redirect('/blogs/' . $blog->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $blog = Blog::findOrFail($id);
        return view('blog.view', ['item' => $blog, 'title' => $blog->title, 'menu' => 'blog']);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $blog = Blog::findOrFail($id);
        $blog->fill_olds();
        return view('blog.edit', ['item' => $blog, 'title' => 'Edit post']);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate(
            $this->validator_rules
        );
        $blog = Blog::findOrFail($id);
        $blog->fill($request->all());
        $blog->save();

        return redirect('/blogs/' . $blog->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

    }

    public function delete($id)
    {
        Blog::destroy($id);
        return redirect('/manage/blogs');
    }

    public function show_page(Request $request)
    {
        $query = Blog::where('url', '=', '/' . $request->path());
        if ($query->count() > 0)
            return $this->show($query->get()[0]->id);
        else
            return abort(404);
    }

}
