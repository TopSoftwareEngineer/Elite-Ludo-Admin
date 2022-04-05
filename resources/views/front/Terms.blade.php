@php
   $web = DB::table('websettings')->first();
   $home = DB::table('homedetails')->first();
@endphp
<!DOCTYPE html>
<html lang="zxx">
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Page Title -->
    <title>{{ $web->website_tagline }}</title>
    <!-- Favicon Icon -->
    <link rel="shortcut icon" href="{{ url('/') }}/storage/Brand/{{ $web->favicon }}">
    <!-- CSS Files -->
    <link rel="stylesheet" href="{{URL::asset('front-assets/css/animate.css')}}">
    <link rel="stylesheet" href="{{URL::asset('front-assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{URL::asset('front-assets//css/font-awsome-all.min.css')}}">
    <link rel="stylesheet" href="{{URL::asset('front-assets//css/slick.css')}}">
    <link rel="stylesheet" href="{{URL::asset('front-assets//css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{URL::asset('admin-assets/vendors/js/sweet-alert/sweetalert.css')}}">
    <link rel="stylesheet" href="{{URL::asset('admin-assets/vendors/js/sweet-alert/jquery.sweet-modal.min.css')}}">
    <link rel="stylesheet" href="{{URL::asset('front-assets//css/meanmenu.css')}}">
    <link rel="stylesheet" href="{{URL::asset('front-assets//css/style.css')}}">
</head>

<body>
    <!-- Preloader Starts -->
    <div class="preloader" id="preloader">
        <div class="preloader-inner">
            <div class="spinner">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>
    </div>

    <header>
        <div id="main-header" class="header-area padding-10">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-3 col-4">
                        <div class="logo">
                            <a href="index.html"> <img src="{{ url('/') }}/storage/Brand/{{ $web->head_logo }}" style="width: 100px"></a>
                        </div>
                    </div>
                    <div class="col-lg-6 d-none d-lg-block">
                        <nav id="mobile-menu">
                            <ul class="main-menu main-menu3">
                                <li><a href="{{ url('/') }}">Home</a></li>
                                <li><a href="#about">About</a></li>
                                <li><a href="#feature">Features</a></li>
                                <li><a href="#screenshot">Screenshot</a></li>
                                <li><a href="#contact">contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3 col-md-9 col-8">
                        <div class="header-btn text-center">
                            <a class="template-btn3" href="{{ url('/') }}/storage/Brand/{{ $home->download_link }}" download>download now</a>
                        </div>
                    </div>
                </div>
                <div class="mobile-menu mobile-menu3"></div>
            </div>
        </div>
    </header>

    <!-- hero3 section -->
    <div class="hero3-slider-active">
        <div class="hero-section3">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="hero3-left">
                            {{-- <span class="heading1  wow fadeInLeft">best way</span> --}}
                            <span class="heading2  wow fadeInLeft" data-wow-delay=".2s">{{ $home->heading }}</span>
                            <p class="wow fadeInLeft" data-wow-delay=".3s">{{ $home->subheading }}</p>
                            <a data-wow-delay=".3s" href="{{ url('/') }}/storage/Brand/{{ $home->download_link }}" download class="template-btn3 wow fadeInLeft">Download App</a>
                            <a data-wow-delay=".3s" href="#contact" class="template-btn4 wow fadeInLeft">contact us</a>
                        </div>
                    </div>
                    <div class="col-lg-6 d-none d-lg-block">
                        <div class="hero3-right">
                            <img class="main-img" src="{{ url('/') }}/storage/Brand/{{ $home->bannerimg }}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- features section -->
    <section id="feature" class="service-area features-section padding-top-80">
        <div class="ht-fea-shapes">
            <img class="ss-shape1" src="public/front-{{ url('/') }}/front-assets/images/ht-shape6.png" alt="">
        </div>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-12 common-title text-center">
                    <h3>{{ $web->terms_title }}</h3>
                    <p class="text-justify">{!! $web->terms_desc !!}</p>
                </div>

            </div>
        </div>
    </section>
    <!-- contact-area -->
    <section id="contact" class="contact-area padding-bottom-115 padding-top-120">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 wow fadeInLeft">
                    <div class="contact-left">
                        <a href="{{ $home->contact_video }}" class="test-popup-link item-ripple"><i
                                class="fas fa-play"></i></a>
                                <img  src="{{ url('/') }}/storage/Brand/{{ $home->contact_image }}">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInRight">
                    <div class="contact-right">
                        <div class="common-title margin-bottom-30">
                            <h3>get in touch</h3>
                            <p> We are here for you! How can we Help?</p>
                        </div>
                        <div class="htcontact-form">
                            <form class="contact_form_submit" method="post" action="{{route('create.contact.new')}}">
                                @csrf
                                <input required type="text" name="name" placeholder="Your Name">
                                <input required type="email" name="email" placeholder="Email">
                                <input required type="text" name="subject" placeholder="subject">
                                <textarea name="message" required placeholder="Write your Text"></textarea>
                                <button type="submit" class="template-btn3">submit now</button>
                                </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- footer-area -->
    <footer>
        <div class="footer-area footer-area3">
            <div class="footer-top padding-top-100 padding-bottom-70">
                <div class="footer-t-shapes">
                    <img class="ftshp1" src="{{ url('/') }}/front-assets/images/footer-shape.png" alt="">
                    <img class="ftshp2 item-animateOne" src="{{ url('/') }}/front-assets/images/footer-shp2.png" alt="">
                    <img class="ftshp3 item-animateTwo" src="{{ url('/') }}/front-assets/images/footer-shp2.png" alt="">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                            <div class="widget text-center text-sm-left">
                                <div class="f-logo">
                                    <a href="index.html"> <img src="{{ url('/') }}/storage/Brand/{{ $web->footer_logo }}" style="width: 100px"></a>
                                </div>
                                <p>{{ $web->website_desc }}</p>
                                <div class="social-icons">
                                    <span class="si1"><a href="{{ $web->facebook }}"><i class="fab fa-facebook-f"></i></a></span>
                                    <span class="si2"><a href="{{ $web->twitter }}"><i class="fab fa-twitter"></i></a></span>
                                    <span class="si3"><a href="{{ $web->instagram }}"><i class="fab fa-instagram"></i></a></span>
                                    <span class="si3"><a href="{{ $web->pinterest }}"><i class="fab fa-pinterest-p"></i></a></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                            <div class="widget text-center text-sm-left">
                                <h6>Important
                                     service</h6>
                                <ul class="footer-menu">
                                    <li><a href="{{ url('/') }}">home</a></li>
                                    <li><a href="{{url('/')}}/about-us">about us</a></li>
                                    <li><a href="#screenshot">screenshot</a></li>
                                    <li><a href="#contact">contact us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                            <div class="widget text-center text-sm-left">
                                <h6>more links</h6>
                                <ul class="footer-menu">
                                    <li><a href="{{url('/')}}/terms-condition">Terms & condition</a></li>
                                    <li><a href="{{url('/')}}/privacy-policy">privacy policy</a></li>
                                    <li><a href="{{ url('/') }}/storage/Brand/{{ $home->download_link }}" download>download</a></li>

                                    <li><a href="#feature">features</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                            <div class="widget text-center text-sm-left">
                                <h6>contact</h6>
                                <ul>
                                    <li><i class="fas fa-phone-square-alt"></i> {{ $web->pnum }}</li>
                                    <li><i class="fas fa-envelope"></i> {{ $web->pemail }}</li>
                                    <li><i class="fas fa-home"></i> {{ $web->address }}</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="copyright-area d-flex justify-content-center align-items-center padding-15">
                    <p>{{ $web->copyright }}</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- ToTop Button -->
    <button class="scrollup scroll3"><i class="fas fa-angle-up"></i></button>
    <!-- Javascript Files -->
    <script src="{{URL::asset('front-assets/js/vendor/jquery-2.2.4.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/vendor/bootstrap.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/vendor/slick.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/vendor/counterup.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/vendor/jquery.magnific-popup.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/vendor/waypoints.min.js')}}"></script>
    <script src="{{URL::asset('admin-assets/vendors/js/sweet-alert/jquery.sweet-modal.min.js')}}"></script>
    <script src="{{URL::asset('admin-assets/vendors/js/sweet-alert/sweet-alert.js')}}"></script>
    <script src="{{URL::asset('admin-assets/vendors/js/sweet-alert/sweetalert.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/vendor/easing.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/vendor/jquery.meanmenu.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/vendor/wow.min.js')}}"></script>
    <script src="{{URL::asset('front-assets/js/main.js')}}"></script>
    <script src="{{URL::asset('admin-assets/css/custom/js/screenshot/screenshot.js')}}"></script>
</body>

</html>
