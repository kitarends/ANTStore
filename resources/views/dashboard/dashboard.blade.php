@extends('layouts.default')
@section('content')
    <div class="ui container">
        <div class="ui huge header">Admin dashboard
            <div class="ui sub header">Manage every thing</div>
        </div>
        <br>
        @include('dashboard.total')
        <br>
        <br>
        <br>
        @include('dashboard.last_month')

    </div>

@endsection