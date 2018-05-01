<a class="ui card" href="/products/{{$item->id}}">
    <div class="image dimmable square" style="padding: 20px; background: white;display: table">
        <div class="ui blurring inverted dimmer transition hidden">
            <div class="content">
                <div class="center">
                    <div class="ui inverted green button add_to_cart_button" style="margin-bottom: 6px"
                         product_id="{{$item->id}}"
                    ><i class="cart plus icon"></i> Add to cart
                    </div>
                    {{--<div class="ui inverted red button">--}}
                    {{--<i class="heart icon"></i> Add to wish list--}}
                    {{--</div>--}}
                </div>
            </div>
        </div>
        <img src="/images/{{explode(';',$item->image_urls)[0]}}" class="product_image">
    </div>
    @if($item->price > $item->sale_off)
        <div class="ui red top right attached label">Sale-off</div>
    @endif
    <div class="content" style="text-align: center">
        <h2 class="header" style="white-space: nowrap;overflow-x: hidden;text-overflow: ellipsis">{{$item->name}}</h2>
        <div class="meta">
            @if($item->price > $item->sale_off)
                <h2>
                    <del>{{$item->price}}$</del>
                    <span style="color: red">{{$item->sale_off}}$</span>
                </h2>
            @else
                <h2>
                    {{$item->price}}$
                </h2>
            @endif
        </div>
        <div class="ui star rating" data-rating="{{round($item->comments->avg('score'), 1)}}" data-max-rating="5"
             style="margin-top: 4px"></div>
    </div>
</a>