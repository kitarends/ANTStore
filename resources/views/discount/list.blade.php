@extends('layouts.default')
@section('content')

    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage">Admin</a>
            <i class="right angle icon divider"></i>
            <div class="active section">Discount codes</div>
        </div>
        <div class="ui huge header">Discount codes</div>
        <a class="ui primary button" href="/discounts/create" style="margin-bottom: 10px"><i class="plus icon"></i>Create new code</a>
        <table class="ui celled table">
            <thead>
            <tr>
                <th>Name</th>
                <th>Code</th>
                <th>Type</th>
                <th>Discount</th>
                <th>Used times</th>
                <th>Time</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($items as $item)
                @include('discount.table_row',['item'=>$item])
            @endforeach
            </tbody>
        </table>
    </div>

@endsection