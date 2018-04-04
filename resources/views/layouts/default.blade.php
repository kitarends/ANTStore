<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{isset($title)?$title.' - ':''}}NATStore - World of shoes</title>

@include('layouts.js_include')

<!-- Styles -->


    <link rel='stylesheet prefetch' href='https://jeffry.in/old-jeffry-in/css/jeffry.in.css'>
    <link rel='stylesheet prefetch' href='https://jeffry.in/old-jeffry-in/css/jeffry.in.slider.css'>
    <link href="/css/semantic.min.css" rel="stylesheet">
    <link href="/css/app.css?t={{rand()}}" rel="stylesheet">
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">


</head>
<body>
@include('layouts.top_menu')
@include('layouts.logo_and_nav')
@yield('content')



@include('layouts.footer')
</body>
</html>

