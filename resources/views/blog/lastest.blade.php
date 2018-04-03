<div class="ui dividing header">
    Lasted posts
</div>
@foreach(\App\Blog::all()->sortByDesc('updated_at')->take(6) as $post)
    <p><strong><a href="/blogs/{{$post->id}}">{{$post->title}}</a></strong>
        <br>
        <small>{{$post->updated_at}}</small>
    </p>

@endforeach
<hr>
<p></p><a href="/blogs/">View all >> </a>