@extends('layouts.default')
@section('content')
    @include('home.banner')
    <div class="ui container">
        <h1>Recent products</h1>
        <div class="ui four column stackable grid">
            @foreach(\App\Product::query()->orderByDesc('updated_at')->take(4)->get() as $product)
                <div class="column">
                    @include('product.card',['item'=>$product])
                </div>
            @endforeach
        </div>
    </div>
@endsection