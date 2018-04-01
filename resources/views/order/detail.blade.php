@extends('layouts.default')
@section('content')

    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/orders">Orders</a>
            <i class="right angle icon divider"></i>
            <div class="active section">Orders #{{$item->id}}</div>
        </div>
        <div class="ui huge header">Orders #{{$item->id}}</div>
        <table class="ui celled table">
            <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            </thead>
            <tbody>
            @foreach($items as $i)
                @include('order.product_row',['item'=>$i])
            @endforeach
            </tbody>
            <tfoot>
            <tr>
                <th colspan="5" style="text-align: center;">
                    <div class="ui huge header"
                         style="margin-top: 10px;margin-bottom: 10px"
                    >Total: {{$total}}$</div>
                </th>
            </tr>
            </tfoot>
        </table>
    </div>

@endsection