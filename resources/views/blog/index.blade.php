@extends('layouts.default')
@section('content')
    <div class="ui container">
        <div class="ui huge header">All post</div>
        <br>
        <div class="ui twelve wide column">
            @foreach($blogs as $blog)
                <p>
                    <a class="ui dividing header" href="/blogs/{{$blog->id}}">{{$blog->title}}</a></p>
                <p>
                    <small>{{$blog->updated_at}}</small>
                </p>
                {!!$blog->thumb  !!}
                <a href="/blogs/{{$blog->id}}">Read more >></a>
                <br>
                <br>
                <br>
            @endforeach
        </div>
        <div class="ui content" style="text-align: center">
            {{$blogs->links('vendor.pagination.semantic-ui')}}
        </div>
    </div>
@endsection