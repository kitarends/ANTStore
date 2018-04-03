@extends('layouts.default')
@section('content')

    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage">Admin</a>
            <i class="right angle icon divider"></i>
            <div class="active section">Blogs</div>
        </div>
        <div class="ui huge header">Blogs</div>
        <a class="ui primary button" href="/blogs/create" style="margin-bottom: 10px"><i class="plus icon"></i>Create new post</a>
        <table class="ui celled table">
            <thead>
            <tr>
                <th>ID</th>
                <th>URL</th>
                <th>Title</th>
                <th>Time</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($items as $item)
                @include('blog.table_row',['item'=>$item])
            @endforeach
            </tbody>
        </table>
    </div>

@endsection