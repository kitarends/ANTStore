@extends('layouts.default')

@section('content')
    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/cart">Cart</a>
            <i class="right angle icon divider"></i>
            <div class="active section">Checkout</div>
        </div>


        <div class="ui grid" style="margin-top: 10px">
            <div class="two wide column">
            </div>
            <div class="twelve wide column">
                <div class="ui  segment">
                    <h3 class="ui dividing header">Billing details</h3>
                    @include('layouts.errors_block')
                    <form class="ui form" method="post" action="/save_checkout">
                        {{csrf_field()}}
                        @include('ui.form.input',['name'=>'email','label'=>'Email *','type'=>'email'])
                        @include('ui.form.input',['name'=>'name','label'=>'Reciver name *','type'=>'text'])
                        @include('ui.form.input',['name'=>'phone','label'=>'Phone number *','type'=>'tel'])
                        @include('ui.form.input',['name'=>'address','label'=>'Address *','type'=>'text'])
                        @include('ui.form.ckeditor',['name'=>'note','label'=>'Additional information ','type'=>'text'])
                        <button class="ui teal button" type="submit">Order</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection