<div class="ui container" style="margin-top: 60px">
    <div class="ui two column grid">
        <a class="column" style="padding-left: 100px" href="/">
            <div class="ui huge header"><span style="color: white;background: black;padding: 10px">NAT</span>Store</div>
            <div class="ui small header">Only authentic available</div>
        </a>
        <div class="column">
            <div class="ui borderless menu">
                <a class="item" href="/">Home</a>
                <div class="ui dropdown item">
                    Shop
                    <i class="dropdown icon"></i>
                    <div class="menu">
                        <a class="item">All</a>
                        @foreach(\App\Category::all() as $category)
                            <a href="/categories/{{$category->id}}" class="item">{{$category->name}}</a>
                        @endforeach
                    </div>
                </div>
                <a class="item" href="/sales">Sales</a>
                <a class="item" href="/blogs">Blogs</a>
                <a class="item" href="/blogs">Contact</a>
                <a class="item" href="/blogs">About us</a>
            </div>
        </div>
    </div>
    <div class="ui divider"></div>
    @if(Session::has('message'))
        <div class="ui message">
            <div class="header">
                {{Session::get('message')}}
            </div>
        </div>
        <div class="ui divider"></div>
    @endif
</div>