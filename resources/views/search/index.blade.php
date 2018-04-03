@extends('layouts.default')
@section('content')
    <div class="ui container">
        <div class="ui huge header">Results
            <div class="ui sub header">{{$products->count()}} results</div>
        </div>
        <br>
        <div class="ui four column grid">
            @foreach($products as $product)
                <div class="column">
                    @include('product.card',['item'=>$product])
                </div>
            @endforeach
        </div>
        <div class="ui content" style="text-align: center">
            {{$products->links('vendor.pagination.semantic-ui')}}
        </div>
    </div>
@endsection