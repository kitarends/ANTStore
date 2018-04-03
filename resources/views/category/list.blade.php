@extends('layouts.default')
@section('content')

    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage">Admin</a>
            <i class="right angle icon divider"></i>
            <div class="active section">Categories</div>
        </div>
        <div class="ui huge header">Categories</div>
        <a class="ui primary button" href="/categories/create"><i class="plus icon"></i>Create new category</a>
        <table class="ui celled table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Category</th>
                <th>Sort</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($items as $item)
                @include('category.table_row',['item'=>$item])
            @endforeach
            </tbody>
        </table>
    </div>

@endsection