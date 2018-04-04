@extends('layouts.default')

@section('content')
    <div class="ui container">
        <div class="ui breadcrumb" style="margin-bottom: 10px">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section">{{$item->category->name}}</a>
            <i class="right angle icon divider"></i>
            <div class="active section">{{$item->name}}</div>
        </div>

        <div class="ui two column grid">
            <div class="column">
                <div class="image">
                    <img src="/images/{{explode(';',$item->image_urls)[0]}}" style="width: 100%">
                </div>
            </div>
            <div class="column">
                <h1>{{$item->name}}</h1>
                <div class="ui star rating" data-rating="{{$item->getScore()}}" data-max-rating="5"></div>
                <p>({{$item->comments()->count()}} customs reviews)</p>
                @if($item->price>$item->sale_off)
                    <h2>
                        <del>{{$item->price}}$</del>
                        <span style="color: red">{{$item->sale_off}}$</span>
                    </h2>
                @else
                    <h2>
                        {{$item->price}}$
                    </h2>
                @endif
                <p>{{$item->short_detail}}</p>
                <div class="ui divider"></div>
                <div class="ui two column grid">
                    <div class="column">

                        <div class="field">
                            <div class="ui two column grid">
                                <div class="column">
                                    <strong style="float: right;vertical-align: baseline">Quantity</strong>
                                </div>
                                <div class="column">
                                    <form class="ui form">

                                        <input type="number" style="width:80px;" value="1" id="product_quantity">
                                    </form>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="column">
                        <button class="ui primary button" onclick="add_to_cart({{$item->id}})">Add to
                            cart
                        </button>
                    </div>
                </div>
                <div class="ui divider"></div>
                <strong>Category: <a
                            href="/search?category={{$item->category->id}}">{{$item->category->name}}</a></strong>
            </div>
        </div>
        <script>
            function add_to_cart(product_id) {
                location.href = '/cart/add/' + product_id + '/' + $('#product_quantity').val();
            }
        </script>

        <div class="ui  segment">
            <h3 class="ui dividing header">Detail</h3>
            {!! $item->full_html_detail !!}
        </div>
        <div class="ui segment">
            <h3 class="ui dividing header">Reviews ({{$item->comments->count()}})</h3>
            <div class="ui comments" style="width: 100%">
                @foreach($item->comments as $comment)
                    @include('product.review.row',['item'=>$comment])
                @endforeach
            </div>
            @if(Auth::check())
                @if($is_bought)
                    @include('product.review.input')
                @else
                    <h2>You need to buy this product to be able to review</h2>
                @endif
            @else
                <h2>You need to <a href="/login">login</a> to review</h2>
            @endif
        </div>
        <h1>Related products</h1>

        <div class="ui four column grid">
            @foreach($related as $product)
                <div class="column">
                    @include('product.card',['item'=>$product])
                </div>
            @endforeach
        </div>
    </div>
@endsection