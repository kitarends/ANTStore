<a class="ui card" href="/products/{{$item->id}}">
    <div class="image dimmable">
        <div class="ui blurring inverted dimmer transition hidden">
            <div class="content">
                <div class="center">
                    <div class="ui inverted green button add_to_cart_button" style="margin-bottom: 6px"
                         product_id="{{$item->id}}"
                    ><i class="cart plus icon"></i> Add to cart
                    </div>
                    <div class="ui inverted red button">
                        <i class="heart icon"></i> Add to wish list
                    </div>
                </div>
            </div>
        </div>
        <img src="/images/{{explode(';',$item->image_urls)[0]}}">
    </div>
    <div class="content" style="text-align: center">
        <h2 class="header">{{$item->name}}</h2>
        <div class="meta">
            <h2>
                <del>{{$item->price}}$</del>
                <span style="color: red">{{$item->sale_off}}$</span></h2>
        </div>
        <div class="ui star rating" data-rating="3" data-max-rating="5"></div>
    </div>
</a>