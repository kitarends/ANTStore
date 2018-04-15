<div class="ui container" style="margin-top: 60px">
    <div class="ui two column stackable grid">
        <a class="column" style="padding-left: 100px" href="/">
            <div class="ui huge header"><span style="color: white;background: black;padding: 10px">ANT</span>Store</div>
            <div class="ui small header">Only authentic available</div>
        </a>
        <div class="column">
            <div class="ui borderless stackable menu">
                <a class="item {{Request::is('/')?'active':''}}" href="/">Home</a>
                <div class="ui dropdown dividing item">
                    Categories
                    <i class="dropdown icon"></i>
                    <div class="menu">
                        <a class="{{Request::is('all')?'active':''}} item" href="/all">All</a>
                        @foreach(\App\Category::all() as $category)
                            <a href="/category/{{$category->id}}" class="{{Request::is('category/'.$category->id)?'active':''}} item">{{$category->name}}</a>
                        @endforeach
                    </div>
                </div>
                <a class="item {{Request::is('sale_off')?'active':''}}" href="/sale_off" style="color: red">Sales</a>
                <a class="item {{Request::is('blogs*')?'active':''}}" href="/blogs">Blogs</a>
                <a class="item {{Request::is('contact')?'active':''}}" href="/contact">Contact</a>
                <a class="item {{Request::is('about')?'active':''}}" href="/about">About us</a>
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