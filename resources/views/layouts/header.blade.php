<div class="sub-header">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8">
                <ul class="info">
                    <li><i class="fa fa-envelope"></i>{{ $vars['email'] }}</li>
                    <li><i class="fa fa-map"></i>{{ $vars['address'] }} </li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-4">
                <ul class="social-links">
                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="https://x.com/minthu" target="_blank"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="{{ route('home') }}" class="logo">
                        <img src="{{ asset('assets/images/logo-2.png') }}" style="height: 80px; width:170px"
                            alt="Villa Logo">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        @include('partials.nav')
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                </nav>
            </div>
        </div>
    </div>
</header>
