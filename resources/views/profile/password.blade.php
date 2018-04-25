@extends('layouts.default')

@section('content')
    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <span class="active section">Change password</span>
        </div>

        <div class="ui grid" style="margin-top: 20px">
            <div class="eight wide column">
                <div class="ui huge header">Change password</div>
                @include('layouts.errors_block')
                <form class="ui form" method="post" action="/profile/save_password">
                    {{csrf_field()}}
                    @include('ui.form.input',['name'=>'old_password','label'=>'Old password','type'=>'password'])
                    @include('ui.form.input',['name'=>'new_password','label'=>'New password','type'=>'password'])
                    @include('ui.form.input',['name'=>'new_password_confirmation','label'=>'Confirm new password','type'=>'password'])
                    <button class="ui primary button" type="submit">Change</button>
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