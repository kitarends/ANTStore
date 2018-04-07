@extends('layouts.default')

@section('content')
    <div class="ui container">
        <div class="ui breadcrumb">
            <a class="section" href="/">Home</a>
            <i class="right angle icon divider"></i>
            <span class="active section">Login</span>
        </div>

        <div class="ui stackable grid" style="margin-top: 20px">
            <div class="eight wide column">
                <div class="ui huge header">Login</div>
                @include('layouts.errors_block')

                @if (session('confirmation-success'))
                    <div class="ui segment">
                        <p>{{ session('confirmation-success') }}</p>
                    </div>
                @endif
                @if (session('confirmation-danger'))
                    <div class="ui segment">
                        <p>  {!! session('confirmation-danger') !!}</p>
                    </div>
                @endif
                <form class="ui form" method="post" action="{{ route('login') }}">
                    {{csrf_field()}}
                    @include('ui.form.input',['name'=>'email','label'=>'Email *','type'=>'email'])
                    @include('ui.form.input',['name'=>'password','label'=>'Password *','type'=>'password'])

                    @include('ui.form.checkbox',['name'=>'remember','label'=>'Remember me'])
                    <button class="ui primary button" type="submit">Login</button>
                    <p><a href="/password/reset">Forget your password?</a></p>
                    <p><a href="/register">Don't have an account? Register now!</a></p>

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