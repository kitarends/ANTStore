@extends('layouts.default')
@section('content')
    <div class="ui container">
        <div class="ui grid">
            <div class="ui twelve wide column">
                <div class="ui huge header">{{$item->title}}</div>
                <p>Updated at <strong>{{$item->updated_at}}</strong> by <strong>Admin</strong>
                    @if(Auth::check()&&Auth::user()->is_admin)
                        <a href="/blogs/{{$item->id}}/edit" class="ui labeled icon primary tiny button"
                           style="margin-left: 30px">
                            <i class="pencil icon"></i>Edit</a>
                    @endif
                </p>
                <div class="ui content">
                    {!! $item->html_content !!}
                </div>
            </div>
            <div class="ui four wide column">
                @include('blog.lastest')
            </div>

        </div>
    </div>
@endsection