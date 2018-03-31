<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{isset($title)?$title.' - ':''}}NATStore</title>

@include('layouts.js_include')

<!-- Styles -->
    <link href="/css/semantic.min.css" rel="stylesheet">
    <link href="/css/app.css?t={{rand()}}" rel="stylesheet">
</head>
<body>
@include('layouts.top_menu')
@include('layouts.logo_and_nav')
@include('layouts.banner')
<div class="ui container">
    <div class="ui divider"></div>
    <h1>Recent products</h1>
    <div class="ui four column grid">
        <div class="column">
            <a class="ui card" href="/">
                <div class="image">
                    <img src="/images/shoes.jpg">
                </div>
                <div class="content" style="text-align: center">
                    <h2 class="header">Vans SK8 HI</h2>
                    <div class="meta">
                        <h2><del>90$</del> <span style="color: red">60$</span></h2>
                    </div>
                    <div class="ui star rating" data-rating="3" data-max-rating="5"></div>
                </div>
            </a>
        </div>

    </div>
</div>

@include('layouts.footer')
</body>
</html>

