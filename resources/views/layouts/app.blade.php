<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet" />
    <title>@yield('title', 'Rapid-Construct')</title>
    <link href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('assets/css/fontawesome.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/css/templatemo-villa-agency.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/css/owl.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/css/animate.css') }}" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    @include('layouts.seo')
</head>

<body>
    <div id="js-preloader" class="js-preloader">
        <div class="preloader-inner">
            <span class="dot"></span>
            <div class="dots">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div>

    @include('layouts.header')

    @yield('content')

    @include('layouts.footer')

    <!-- Scripts -->
    <script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('vendor/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/isotope.min.js') }}"></script>
    <script src="{{ asset('assets/js/owl-carousel.js') }}"></script>
    <script src="{{ asset('assets/js/counter.js') }}"></script>
    <script src="{{ asset('assets/js/custom.js') }}"></script>
</body>

</html>
