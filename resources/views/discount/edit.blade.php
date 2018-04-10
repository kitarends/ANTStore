@extends('layouts.default')

@section('content')
    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage">Admin</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage/discounts">Discount codes</a>
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
                    <form class="ui form" method="post" action="/discounts{{isset($item)?'/'.$item->id:''}}">
                        {{csrf_field()}}
                        {{isset($item)?method_field('put'):method_field('post')}}
                        @include('ui.form.input',['name'=>'name','label'=>'Name *','type'=>'text'])
                        @include('ui.form.input',['name'=>'code','label'=>'Code *','type'=>'text'])
                        @include('ui.form.select2',['name'=>'type','label'=>'Discount type *','options'=>\App\Discount::TYPES])
                        @include('ui.form.input',['name'=>'discount','label'=>'Discount *','type'=>'text'])
                        <button class="ui primary button" type="submit">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection