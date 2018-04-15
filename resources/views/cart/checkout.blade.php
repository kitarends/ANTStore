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

                    @if($discounted<$total)
                        <h3 div class="ui gray huge header">
                            <del>Total cost: {{$total}}$</del>
                        </h3>
                        <h3 div class="ui huge red dividing header">Discounted cost only: {{round($discounted,2)}}$</h3>
                    @else
                        <h3 div class="ui  huge blue dividing header">Total cost: {{$total}}$</h3>
                    @endif

                    <form class="ui form" method="post" action="/save_checkout">
                        {{csrf_field()}}
                        @if(Auth::check()&&Auth::user()->is_admin)
                            @include('ui.form.select',['name'=>'user_id','label'=>'Customer (for manual order) (admin only)','options'=>\App\User::all()])
                        @endif
                        @include('ui.form.input',['name'=>'email','label'=>'Email *','type'=>'email'])
                        @include('ui.form.input',['name'=>'name','label'=>'Reciver name *','type'=>'text'])
                        @include('ui.form.input',['name'=>'phone','label'=>'Phone number *','type'=>'tel'])
                        @include('ui.form.input',['name'=>'address','label'=>'Address *','type'=>'text'])
                        @include('ui.form.textarea',['name'=>'note','label'=>'Additional information ','type'=>'text'])
                        <button class="ui teal button" type="submit">Confirm checking out</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection