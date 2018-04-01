@extends('layouts.default')

@section('content')
    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <span class="active section">Profile info</span>
        </div>

        <div class="ui grid" style="margin-top: 20px">
            <div class="eight wide column">
                <div class="ui huge header">Profile info</div>
                @include('layouts.errors_block')
                <form class="ui form" method="post" action="/profile/save_info">
                    {{csrf_field()}}

                    <div class="field">
                        <label>Name</label>
                        <input name="name" type="text" value="{{old('name')}}">
                    </div>
                    <div class="field">
                        <label>Phone number</label>
                        <input name="phone" value="{{old('phone')}}" type="tel">
                    </div>
                    <div class="field">
                        <label>Address</label>
                        <input name="address" value="{{old('address')}}" type="text">
                    </div>
                    <button class="ui primary button" type="submit">Save</button>
                </form>
            </div>
            <div class="four wide column">
                <h3 class="ui dividing header">Follow us on</h3>
                <p>Subscribe to our social network profiles for updates</p>
                <a href="#"><i class="huge facebook icon"></i> </a>
                <a href="#"><i class="huge red google icon"></i> </a>
                <a href="#"><i class="huge blue twitter icon"></i> </a>
            </div>
        </div>

    </div>
@endsection