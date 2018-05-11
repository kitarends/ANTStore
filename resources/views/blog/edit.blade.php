@extends('layouts.default')

@section('content')
    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage">Admin</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage/blogs">Blogs</a>
            <i class="right angle icon divider"></i>
            <div class="active section">{{$title}}</div>
        </div>


        <div class="ui grid" style="margin-top: 10px">
            <div class="two wide column">
            </div>
            <div class="twelve wide column">
                <div class="ui  segment">
                    <h3 class="ui dividing header">{{$title}}</h3>
                    @include('layouts.errors_block')
                    <form class="ui form" method="post" action="/blogs{{isset($item)?'/'.$item->id:''}}">
                        {{csrf_field()}}
                        {{isset($item)?method_field('put'):method_field('post')}}
                        @include('ui.form.input',['name'=>'url','label'=>'Post\'s URL *','type'=>'text'])
                        @include('ui.form.input',['name'=>'title','label'=>'Title *','type'=>'text'])
                        @include('ui.form.ckeditor',['name'=>'thumb','label'=>'Brief content'])
                        @include('ui.form.ckeditor',['name'=>'html_content','label'=>'Full content'])
                        <button class="ui primary button" type="submit">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection