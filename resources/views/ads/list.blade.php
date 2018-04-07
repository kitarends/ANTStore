@extends('layouts.default')
@section('content')

    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <a class="section" href="/manage">Admin</a>
            <i class="right angle icon divider"></i>
            <div class="active section">Advertises</div>
        </div>
        <div class="ui huge header">Advertises</div>
        <a class="ui primary button" href="/ads/create" style="margin-bottom: 10px"><i class="plus icon"></i>Create new advertise</a>
        <table class="ui celled table">
            <thead>
            <tr>
                <th>URL</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach($items as $item)
                @include('ads.table_row',['item'=>$item])
            @endforeach
            </tbody>
        </table>
    </div>

@endsection