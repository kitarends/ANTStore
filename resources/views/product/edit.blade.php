@extends('layouts.default')

@section('content')
    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage/products">Products</a>
            <i class="right angle icon divider"></i>
            <div class="active section">Edit</div>
        </div>


        <div class="ui grid" style="margin-top: 10px">
            <div class="two wide column">
            </div>
            <div class="twelve wide column">
                <div class="ui  segment">
                    <h3 class="ui dividing header">Add new product</h3>
                    @include('layouts.errors_block')
                    <form class="ui form" method="post" action="/products{{isset($item)?'/'.$item->id:''}}"
                          enctype="multipart/form-data">
                        {{csrf_field()}}
                        {{isset($item)?method_field('put'):method_field('post')}}
                        @include('ui.form.input',['name'=>'name','label'=>'Name *','type'=>'text'])
                        @include('ui.form.files',['name'=>'image[]','label'=>'Images *'])
                        @include('ui.form.select',['name'=>'category_id','label'=>'Category *','options'=>\App\Category::all()])
                        @include('ui.form.input',['name'=>'short_detail','label'=>'Product brief detail *'])
                        @include('ui.form.ckeditor',['name'=>'full_html_detail','label'=>'Product full detail *'])
                        @include('ui.form.input',['name'=>'price','label'=>'Product price *','type'=>'number'])
                        @include('ui.form.input',['name'=>'sale_off','label'=>'Product sale-off price *','type'=>'number'])
                        <button class="ui primary button" type="submit">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection