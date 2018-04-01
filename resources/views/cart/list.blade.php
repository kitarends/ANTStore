@extends('layouts.default')
@section('content')

    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <div class="active section">Cart</div>
        </div>
        <div class="ui huge header">Cart</div>
        <table class="ui celled table">
            <thead>
            <tr>
                <th></th>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($items as $item)
                @include('cart.table_row',['item'=>$item])
            @endforeach
            </tbody>
            <tfoot>
            <tr>
                <th colspan="5">
                    <div class="ui action input">
                        <input type="text" placeholder="Coupon code...">
                        <button class="ui red button">Apply</button>
                    </div>
                    <button class="ui right floated primary button">Update cart</button>
                    <div class="ui two column grid" style="margin-top: 20px">
                        <div class="column"></div>
                        <div class="column">
                            <div class="ui dividing header">Cart total</div>
                            <h1><strong>{{$total}}$</strong></h1>
                            <a class="ui teal button" href="/checkout">Proceed to checkout</a>
                        </div>
                    </div>
                </th>
            </tr>
            </tfoot>
        </table>
    </div>

@endsection