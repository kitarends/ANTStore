@extends('layouts.default')
@section('content')

    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage">Admin</a>
            <i class="right angle icon divider"></i>
            <div class="active section">{{$title}}</div>
        </div>
        <div class="ui huge header">Products</div>
        <a class="ui primary button" href="/products/create" style="margin-bottom: 10px"><i class="plus icon"></i>Create new product</a>

        <table class="ui celled table" id="products_table" >
            <thead>
            <tr>
                <th>Image</th>
                <th>Products</th>
                <th>Price</th>
                <th>Sale off</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($items as $item)
                @include('product.table_row',['item'=>$item])
            @endforeach
            </tbody>
        </table>
    </div>

@endsection