<div class="ui menu" style="background: #f7f7f7">
    <div class="ui container">
        <div class="ui dropdown item">
            {{Auth::check()?Auth::user()->name:'My Account'}}
            <i class="dropdown icon"></i>
            <div class="menu">
                @if(Auth::check())
                    <a class="item" href="/orders">View orders</a>
                    <a class="item" href="/profile/info">Edit my information</a>
                    <a class="item" href="/logout">Logout</a>
                @else
                    <a class="item" href="/login">Login</a>
                    <a class="item" href="/register">Register</a>
                    <a class="item" href="/password/reset">Lost password</a>
                @endif

            </div>
        </div>
        @if(Auth::check()&&Auth::user()->is_admin)
            <div class="ui dropdown item">
                <div class="header">Admin</div>
                <i class="dropdown icon"></i>
                <div class="menu">
                    <a class="item" href="/manage">Dashboard</a>
                    <a class="item" href="/manage/products">Products</a>
                    <a class="item" href="/manage/categories">Categories</a>
                    <a class="item" href="/manage/users">Users</a>
                    <a class="item" href="/manage/orders">Orders</a>
                    <a class="item" href="/manage/ads">Advertises</a>
                    <a class="item" href="/manage/blogs">Blogs</a>
                </div>
            </div>
        @endif


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