<!DOCTYPE html>

<html>

<head>

    <title>@yield('title')</title>

    <!-- mobile responsive meta -->
     <meta charset="utf-8" lang="en-us">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    @yield('meta_description')
    @yield('meta_author')
    @yield('meta_keywords')

    <!--google adsence-->
    <meta name="google-adsense-account" content="ca-pub-8178438873278221">
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-8178438873278221"
     crossorigin="anonymous"></script>

<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-ZY0C01Y2Z0"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-ZY0C01Y2Z0');
</script>

<!-- google search consoule -->
<meta name="google-site-verification" content="uvPPL7dpIP4KdBDoQi05ZL5ltJ5CyVs_SQmvpi4tJWk" />


@include('website.includes.css.css')


</head>

<body>

@include('website.includes.header')

@yield('content')

@include('website.includes.footer')

{{--Js--}}

@include('website.includes.js.js')



</body>
</html>
