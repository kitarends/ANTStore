<div class="ui stackable  menu" style="background: #f7f7f7">
    <div class="ui container">
        <div class="ui dropdown item">
            {{Auth::check()?Auth::user()->name:'My Account'}}
            <i class="dropdown icon"></i>
            <div class="menu">
                @if(Auth::check())
                    <a class="item" href="/orders">View my orders</a>
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
                    <a class="item" href="/manage/orders">Orders <span class="ui red label"
                                                                       style="margin-left: 20px">{{\App\Order::whereStatus('waiting')->count()}}</span></a>
                    <a class="item" href="/manage/ads">Advertises</a>
                    <a class="item" href="/manage/discounts">Discount codes</a>
                    <a class="item" href="/manage/blogs">Blogs</a>
                </div>
            </div>
        @endif


        <div class="right menu">
            <a class="item" href="/cart"><i class="cart icon"></i> Cart
                @if(Session::has('discount'))
                    <span class="ui red label">{{Session::get('discount')}}</span></a>
            @endif

            <a class=" item" href="/checkout"><i class="payment icon"></i>Check out</a>

            <div class=" item">
                <form class="ui action left icon input" method="get" action="/search" style="max-width: 70%">
                    <i class="search icon"></i>
                    <input type="text" placeholder="Search for products" value="{{old('query')}}" name="query">
                    <button class="ui button" type="submit">Search</button>
                </form>
            </div>

        </div>
    </div>
</div>