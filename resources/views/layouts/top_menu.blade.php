<div class="ui menu" style="background: #f7f7f7">
    <div class="ui container">
        <div class="ui dropdown item">
            {{Auth::check()?Auth::user()->name:'My Account'}}
            <i class="dropdown icon"></i>
            <div class="menu">
                <div class="header">Account</div>
                @if(Auth::check())
                    <a class="item" href="/profile/orders">View orders</a>
                    <a class="item" href="/profile/info">Edit my information</a>
                    <a class="item" href="/logout">Logout</a>
                    @if(Auth::user()->is_admin)
                        <div class="divider"></div>
                        <div class="header">Admin</div>
                        <a class="item" href="/manage/products">Products</a>
                        <a class="item" href="/manage/categories">Categories</a>
                        <a class="item" href="/users">Users</a>
                        <a class="item" href="/ads">Advertises</a>
                        <a class="item" href="/blogs">Blogs</a>

                    @endif
                @else
                    <a class="item" href="/login">Login</a>
                    <a class="item" href="/register">Register</a>
                    <a class="item" href="/password/reset">Lost password</a>
                @endif

            </div>
        </div>
        <div class="right menu">
            <a class="item" href="/cart"><i class="cart icon"></i> Cart
                {{--<div class=" ui red label">{{cookie('item_number')}} items</div>--}}
            </a>
            <a class=" item" href="/checkout"><i class="payment icon"></i>Check out
                {{--<div class=" ui teal label">{{cookie('total')}}$</div>--}}
            </a>

            <div class=" item">
                <div class="ui action left icon input">
                    <i class="search icon"></i>
                    <input type="text" placeholder="Search for products">
                    <button class="ui button">Search</button>
                </div>
            </div>

        </div>
    </div>
</div>