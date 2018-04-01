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
                <h2>
                    <del>90$</del>
                    <span style="color: red">60$</span></h2>
                <p>Etiam lobortis dolor eros. Sed sodales imperdiet dapibus. Maecenas faucibus urna sed turpis lacinia
                    consectetur. Mauris at bibendum nibh. Maecenas non lorem nec neque imperdiet mattis ac eu purus.
                    Quisque id tellus ut.

                    Ante faucibus interdum eget eu erat. Proin nisl purus, feugiat sit amet luctus in, malesuada sodales
                    risus.</p>
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
                        <button class="ui primary button"  onclick="add_to_cart({{$item->id}})">Add to
                            cart
                        </button>
                    </div>
                </div>
                <div class="ui divider"></div>
                <strong>Category: <a href="#">Men</a></strong>
            </div>
        </div>
        <script>
            function add_to_cart(product_id) {
                location.href = '/cart/add/' + product_id + '/' + $('#product_quantity').val();
            }
        </script>

        <div class="ui  segment">
            <h3 class="ui dividing header">Detail</h3>
            <p>Etiam lobortis dolor eros. Sed sodales imperdiet dapibus. Maecenas faucibus urna sed turpis lacinia
                consectetur. Mauris at bibendum nibh. Maecenas non lorem nec neque imperdiet mattis ac eu purus. Quisque
                id tellus ut. Ante faucibus interdum eget eu erat. Proin nisl purus, feugiat sit amet luctus in,
                malesuada sodales risus.</p>
        </div>
        <div class="ui  segment">
            <h3 class="ui dividing header">Reviews (4)</h3>
            <div class="ui comments" style="width: 100%">
                @for($i=0;$i<4;$i++)
                    <div class="comment">
                        <a class="avatar">
                            <img src="/images/shoes.jpg">
                        </a>
                        <div class="content">
                            <a class="author">Matt</a>
                            <div class="metadata">
                                <span class="date">Today at 5:42PM</span>
                            </div>

                            <div class="text">
                                How artistic!
                            </div>
                            <div class="ui star rating" data-rating="3" data-max-rating="5"></div>

                        </div>
                    </div>
                    <div class="ui divider"></div>
                @endfor

            </div>
        </div>
        <h1>Related products</h1>

        <div class="ui four column grid">
            @for($i=0;$i<4;$i++)

                <div class="column">
                    @include('product.card')
                </div>
            @endfor
        </div>
    </div>
@endsection