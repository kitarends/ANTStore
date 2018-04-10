@extends('layouts.default')
@section('content')
    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <div class="section" href="/orders">Orders</a>
            </div>
        </div>
        <div class="ui huge header">All orders you ever made</div>
        <table class="ui celled table">
            <thead>
            <tr>
                <th>Order</th>
                <th>Total cost</th>
                <th>Status</th>
                <th>Time</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            @foreach($items as $item)
                @include('order.order_row',['item'=>$item])
            @endforeach
            </tbody>
        </table>
    </div>

@endsection

