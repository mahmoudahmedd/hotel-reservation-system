<%@page import="Models.Room"%>
<%@page import="java.util.List"%>
<%@page import="Models.UserRate"%>
<%@page import="Models.Hotel"%>
<%

    Hotel hotel = (Hotel) request.getAttribute("hotel");


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
        <meta name="author" content="Ansonika">
        <title>CITY TOURS - City tours and travel site template by Ansonika</title>

        <!-- Favicons-->
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/views/assets/img/apple-touch-icon-57x57-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/views/assets/img/apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/views/assets/img/apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/views/assets/img/apple-touch-icon-144x144-precomposed.png">

        <!-- GOOGLE WEB FONT -->
        <link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Montserrat:300,400,700" rel="stylesheet">

        <!-- COMMON CSS -->
        <link href="${pageContext.request.contextPath}/views/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/views/assets/css/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/views/assets/css/vendors.css" rel="stylesheet">

        <!-- CUSTOM CSS -->
        <link href="${pageContext.request.contextPath}/views/assets/css/custom.css" rel="stylesheet">
        <style>
            .rating {
                display: inline-block;
                position: relative;
                height: 50px;
                line-height: 50px;
                font-size: 50px;
            }

            .rating label {
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                cursor: pointer;
            }

            .rating label:last-child {
                position: static;
            }

            .rating label:nth-child(1) {
                z-index: 5;
            }

            .rating label:nth-child(2) {
                z-index: 4;
            }

            .rating label:nth-child(3) {
                z-index: 3;
            }

            .rating label:nth-child(4) {
                z-index: 2;
            }

            .rating label:nth-child(5) {
                z-index: 1;
            }

            .rating label input {
                position: absolute;
                top: 0;
                left: 0;
                opacity: 0;
            }

            .rating label .icon {
                float: left;
                color: transparent;
            }

            .rating label:last-child .icon {
                color: #000;
            }

            .rating:not(:hover) label input:checked ~ .icon,
            .rating:hover label:hover input ~ .icon {
                color: #09f;
            }

            .rating label input:focus:not(:checked) ~ .icon:last-child {
                color: #000;
                text-shadow: 0 0 5px #09f;
            }
        </style>
    </head>

    <body>

        <div id="preloader">
            <div class="sk-spinner sk-spinner-wave">
                <div class="sk-rect1"></div>
                <div class="sk-rect2"></div>
                <div class="sk-rect3"></div>
                <div class="sk-rect4"></div>
                <div class="sk-rect5"></div>
            </div>
        </div>
        <!-- End Preload -->

        <div class="layer"></div>
        <!-- Mobile menu overlay mask -->

        <!-- Header================================================== -->
        <header>
            <div id="top_line">
                <div class="container">
                    <div class="row">

                        <div class="col-6">
                            <ul id="top_links">
                                <li><a href="logout">Sign out</a></li>
                            </ul>
                        </div>
                    </div><!-- End row -->
                </div><!-- End container-->
            </div><!-- End top line-->

            <div class="container">
                <div class="row">
                    <div class="col-3">

                    </div>
                    <nav class="col-9">
                        <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                        <div class="main-menu">
                            <div id="header_menu">
                                <img src="${pageContext.request.contextPath}/views/assets/img/logo_sticky.png" width="160" height="34" alt="City tours" data-retina="true">
                            </div>
                            <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                            <ul>
                                <li class="submenu">
                                    <a href="home" class="show-submenu">Home </a>
                                    <a href="profile" class="show-submenu">Profile </a>




                            </ul>
                        </div><!-- End main-menu -->
                        <ul id="top_tools">
                            <li>
                                <a href="home" class="search-overlay-menu-btn"><i class="icon_search"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- container -->
        </header>
        <!-- End Header -->

        <section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/views/uploads/<%=hotel.getImagePath()%>" data-natural-width="1400" data-natural-height="470">
            <div class="parallax-content-2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <span class="rating">
                                <%                                                    for (int i = 0; i < hotel.getStars(); i++) {
                                %>
                                <i class="icon-star voted"></i>
                                <%
                                    }
                                %>
                                <%
                                    for (int i = hotel.getStars(); i < 5; i++) {
                                %>
                                <i class="icon-star-empty"></i>
                                <%
                                    }
                                %>

                            </span>
                            <h1><%=hotel.getName()%> Hotel</h1>
                            <span><%=hotel.getAddress()%>.</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End section -->

        <main>

            <!-- End Position -->

            <div class="collapse" id="collapseMap">
                <div id="map" class="map"></div>
            </div>
            <!-- End Map -->

            <div class="container margin_60">
                <div class="row">
                    <div class="col-lg-8" id="single_tour_desc">

                        <p class="d-none d-md-block d-block d-lg-none"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
                        </p>

                        <!-- Map button for tablets/mobiles -->
                        <div id="Img_carousel" class="slider-pro">


                            <div class="sp-slide">
                                <img alt="Image" class="sp-image" src="${pageContext.request.contextPath}/views/assets/css/images/blank.gif" data-src="${pageContext.request.contextPath}/views/uploads/<%=hotel.getImagePath()%>" data-small="${pageContext.request.contextPath}/views/uploads/<%=hotel.getImagePath()%>" data-medium="${pageContext.request.contextPath}/views/uploads/<%=hotel.getImagePath()%>" data-large="${pageContext.request.contextPath}/views/uploads/<%=hotel.getImagePath()%>" data-retina="img/slider_single_tour/1_large.jpg">
                            </div>



                        </div>

                        <hr>



                        <div class="row">
                            <div class="col-lg-3">
                                <h3>Rooms</h3>
                            </div>
                            <div class="col-lg-9">
                                <%
                                    if (request.getAttribute("rooms") != null) {
                                        List<Room> rooms = (List<Room>) request.getAttribute("rooms");
                                        for (Room room : rooms) {
                                            String[] facilities = room.getFacilities().split(",");

                                %>
                                <h4>Room #<%=room.getNumber()%> - <%=room.getType()%> </h4>
                                <p>
                                    Price Per Day: <%=room.getPricePerDay()%>
                                </p>

                                <div class="row">
                                    <div class="col-md-12">
                                        <ul class="list_icons">
                                            <%
                                                for (String facility : facilities) {
                                                    if (facility.equals("wifi")) {
                                                        out.print("<li><i class='icon_set_1_icon-86'></i> Free wifi</li>");
                                                    } else if (facility.equals("box")) {
                                                        out.print("<li><i class='icon_set_2_icon-106'></i> Safety box</li>");
                                                    } else if (facility.equals("tv")) {
                                                        out.print("<li><i class='icon_set_2_icon-116'></i> Plasma Tv</li>");
                                                    } else if (facility.equals("meals")) {
                                                        out.print("<li><i class='icon_set_1_icon-14'></i> Meals</li>");
                                                    }
                                                }
                                            %>



                                        </ul>
                                    </div>
                                </div>
                                <!-- End row  -->

                                <!-- End photo carousel  -->

                                <hr>
                                <%
                                        }
                                    }
                                %>
                                <!-- End photo carousel  -->
                            </div>
                            <!-- End col-md-9  -->
                        </div>
                        <!-- End row  -->

                        <hr>

                        <div class="row">
                            <div class="col-lg-3">
                                <h3>Reviews</h3>
                                <a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">Leave a review</a>
                            </div>
                            <div class="col-lg-9">
                                <div id="score_detail"><span><%=hotel.getRates()%></span><small>(Based on <%=hotel.getNumberOfRates()%> reviews)</small>
                                </div>


                                <!-- End row -->
                                <hr>
                                <%
                                    if (request.getAttribute("rates") != null) {
                                        List<UserRate> userRates = (List<UserRate>) request.getAttribute("rates");
                                        for (UserRate userRate : userRates) {
                                %>
                                <div class="review_strip_single">
                                    <%                                                    for (int i = 0; i < userRate.rate; i++) {
                                %>
                                <i class="icon-star voted"></i>
                                <%
                                    }
                                %>
                                <%
                                    for (int i = userRate.rate; i < 5; i++) {
                                %>
                                <i class="icon-star-empty"></i>
                                <%
                                    }
                                %>

                                    <h3> <%= userRate.firstName%> <%= userRate.lastName%></h3>
                                    <small> - <%= userRate.date%> -</small>

                                    <p>
                                        <%= userRate.comment%>
                                    </p>

                                </div>
                                <%
                                        }
                                    }
                                %>

                                <!-- End review strip -->


                                <!-- End review strip -->
                            </div>
                        </div>
                    </div>
                    <!--End  single_tour_desc-->

                    <aside class="col-lg-4">
                        <p class="d-none d-xl-block d-lg-block d-xl-none">
                            <a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
                        </p>
                        <form action="${pageContext.request.contextPath}/cart" method="GET">
                            <input name="id"  type="hidden" value="<%=request.getParameter("id")%>">
                            <div class="box_style_1 expose">
                                <h3 class="inner">Check Availability</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label><i class="icon-calendar-7"></i> Check in</label>
                                            <input class="date-pick form-control" data-date-format="yyyy-m-d" type="text" name="check_in">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label><i class="icon-calendar-7"></i> Check out</label>
                                            <input class="date-pick form-control" data-date-format="yyyy-m-d" type="text" name="check_out">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label>Adults</label>
                                            <div class="numbers-row">
                                                <input type="text" value="1" id="adults" class="qty2 form-control"  name="adults">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label>Children</label>
                                            <div class="numbers-row">
                                                <input type="text" value="0" id="children" class="qty2 form-control" name="children">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <input type="submit" class="btn_full" value="Check now" />
                                <br>
                                <%
                                    if ((String) request.getAttribute("message_cart") != null) {
                                        out.print(
                                                "<div class='alert alert-danger' role='alert'>"
                                                + (String) request.getAttribute("message_cart")
                                                + "</div>");
                                    }
                                %>
                            </div>
                        </form>


                        <!--/box_style_1 -->

                        <div class="box_style_4">
                            <i class="icon_set_1_icon-90"></i>
                            <h4><span>Book</span> by phone</h4>
                            <a href="tel://004542344599" class="phone"><%=hotel.getPhoneNumber()%></a>

                        </div>

                    </aside>
                </div>
                <!--End row -->
            </div>
            <!--End container -->

            <div id="overlay"></div>
            <!-- Mask on input focus -->

        </main>
        <!-- End main -->

        <footer class="revealed">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h3>Need help?</h3>

                    </div>
                    <div class="col-md-3">
                        <h3>About</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Register</a></li>
                            <li><a href="#">Terms and condition</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h3>Discover</h3>
                        <ul>
                            <li><a href="#">Community blog</a></li>
                            <li><a href="#">Tour guide</a></li>
                            <li><a href="#">Wishlist</a></li>
                            <li><a href="#">Gallery</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2">
                        <h3>Settings</h3>
                        <div class="styled-select">
                            <select name="lang" id="lang">
                                <option value="English" selected>English</option>
                                <option value="French">French</option>
                                <option value="Spanish">Spanish</option>
                                <option value="Russian">Russian</option>
                            </select>
                        </div>
                        <div class="styled-select">
                            <select name="currency" id="currency">
                                <option value="USD" selected>USD</option>
                                <option value="EUR">EUR</option>
                                <option value="GBP">GBP</option>
                                <option value="RUB">RUB</option>
                            </select>
                        </div>
                    </div>
                </div><!-- End row -->
                <div class="row">
                    <div class="col-md-12">
                        <div id="social_footer">
                            <ul>
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-google"></i></a></li>
                                <li><a href="#"><i class="icon-instagram"></i></a></li>
                                <li><a href="#"><i class="icon-pinterest"></i></a></li>
                                <li><a href="#"><i class="icon-vimeo"></i></a></li>
                                <li><a href="#"><i class="icon-youtube-play"></i></a></li>
                            </ul>
                            <p>© 2021</p>
                        </div>
                    </div>
                </div><!-- End row -->
            </div><!-- End container -->
        </footer><!-- End footer -->

        <div id="toTop"></div><!-- Back to top button -->

        <!-- Search Menu -->
        <div class="search-overlay-menu">
            <span class="search-overlay-close"><i class="icon_set_1_icon-77"></i></span>
            <form role="search" id="searchform" method="get">
                <input value="" name="q" type="search" placeholder="Search..." />
                <button type="submit"><i class="icon_set_1_icon-78"></i>
                </button>
            </form>
        </div><!-- End Search Menu -->

        <!-- Sign In Popup -->
        <div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
            <div class="small-dialog-header">
                <h3>Sign In</h3>
            </div>
            <form>
                <div class="sign-in-wrapper">
                    <a href="#0" class="social_bt facebook">Login with Facebook</a>
                    <a href="#0" class="social_bt google">Login with Google</a>
                    <div class="divider"><span>Or</span></div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" id="email">
                        <i class="icon_mail_alt"></i>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" name="password" id="password" value="">
                        <i class="icon_lock_alt"></i>
                    </div>
                    <div class="clearfix add_bottom_15">
                        <div class="checkboxes float-left">
                            <input id="remember-me" type="checkbox" name="check">
                            <label for="remember-me">Remember Me</label>
                        </div>
                        <div class="float-right"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
                    </div>
                    <div class="text-center"><input type="submit" value="Log In" class="btn_login"></div>
                    <div class="text-center">
                        Don’t have an account? <a href="javascript:void(0);">Sign up</a>
                    </div>
                    <div id="forgot_pw">
                        <div class="form-group">
                            <label>Please confirm login email below</label>
                            <input type="email" class="form-control" name="email_forgot" id="email_forgot">
                            <i class="icon_mail_alt"></i>
                        </div>
                        <p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p>
                        <div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
                    </div>
                </div>
            </form>
            <!--form -->
        </div>
        <!-- /Sign In Popup -->	

        <!-- Modal Review -->
        <div class="modal fade" id="myReview" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myReviewLabel">Write your review</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div id="message-review">
                        </div>
                        <form method="post" action="${pageContext.request.contextPath}/hotel">
                            <input name="hotel_name" id="hotel_name" type="hidden" value="Mariott Hotel Paris">
                            <input name="req_type" type="hidden" value="rate">
                            <!-- End row -->
                            <input name="hotel_id"  type="hidden" value="<%=request.getParameter("id")%>">
                            <input name="user_id" type="hidden" value="<%=request.getSession().getAttribute("user_id").toString()%>">
                            <!-- End row -->


                            <!-- End row -->
                            <div class="form-group rating">
                                <label>
                                    <input type="radio" name="rate" value="1" />
                                    <span class="icon">★</span>
                                </label>
                                <label>
                                    <input type="radio" name="rate" value="2" />
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                </label>
                                <label>
                                    <input type="radio" name="rate" value="3" />
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>   
                                </label>
                                <label>
                                    <input type="radio" name="rate" value="4" />
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                </label>
                                <label>
                                    <input type="radio" name="rate" value="5" />
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                    <span class="icon">★</span>
                                </label>
                            </div>
                            <!-- End row -->
                            <div class="form-group">
                                <textarea name="review_text" id="review_text" class="form-control" style="height:100px" placeholder="Write your review"></textarea>
                            </div>

                            <input type="submit" value="Submit" class="btn_1" id="submit-review">
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- End modal review -->

        <!-- Common scripts -->
        <script src="${pageContext.request.contextPath}/views/assets/js/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/views/assets/js/common_scripts_min.js"></script>
        <script src="${pageContext.request.contextPath}/views/assets/js/functions.js"></script>

        <!-- Date and time pickers -->
        <script src="${pageContext.request.contextPath}/views/assets/js/jquery.sliderPro.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function ($) {
                $('#Img_carousel').sliderPro({
                    width: 960,
                    height: 500,
                    fade: true,
                    arrows: true,
                    buttons: false,
                    fullScreen: false,
                    smallSize: 500,
                    startSlide: 0,
                    mediumSize: 1000,
                    largeSize: 3000,
                    thumbnailArrows: true,
                    autoplay: false
                });
            });
        </script>

        <!-- Date and time pickers -->
        <script>
            $('input.date-pick').datepicker('setDate', 'today');
        </script>

        <!-- Map -->
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCRrJ_VQvTCWM0bv_ZpLfm8j5TW-yUhX9E"></script>                      
        <script>
            $('#collapseMap').on('shown.bs.collapse', function (e) {
                (function (A) {

                    if (!Array.prototype.forEach)
                        A.forEach = A.forEach || function (action, that) {
                            for (var i = 0, l = this.length; i < l; i++)
                                if (i in this)
                                    action.call(that, this[i], i, this);
                        };

                })(Array.prototype);

                var
                        mapObject,
                        markers = [],
                        markersData = {
                            'Hotels': [
                                {
                                    name: '<%=hotel.getName()%>',
                                    location_latitude: <%=hotel.getLongitude()%>,
                                    location_longitude: <%=hotel.getLatitude()%>,
                                    map_image_url: '${pageContext.request.contextPath}/views/assets/img/thumb_map_1.jpg',
                                    name_point: '<%=hotel.getName()%>',
                                    description_point: '<%=hotel.getAddress()%>',
                                    get_directions_start_address: '',
                                    phone: '<%=hotel.getPhoneNumber()%>',
                                    url_point: 'single_hotel.html'
                                }
                            ]


                        };


                var mapOptions = {
                    zoom: 14,
                    center: new google.maps.LatLng(<%=hotel.getLongitude()%>, <%=hotel.getLatitude()%>),
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    mapTypeControl: false,
                    mapTypeControlOptions: {
                        style: google.maps.MapTypeControlStyle.DROPDOWN_MENU,
                        position: google.maps.ControlPosition.LEFT_CENTER
                    },
                    panControl: false,
                    panControlOptions: {
                        position: google.maps.ControlPosition.TOP_RIGHT
                    },
                    zoomControl: true,
                    zoomControlOptions: {
                        style: google.maps.ZoomControlStyle.LARGE,
                        position: google.maps.ControlPosition.TOP_LEFT
                    },
                    scrollwheel: false,
                    scaleControl: false,
                    scaleControlOptions: {
                        position: google.maps.ControlPosition.TOP_LEFT
                    },
                    streetViewControl: true,
                    streetViewControlOptions: {
                        position: google.maps.ControlPosition.LEFT_TOP
                    },
                    styles: [
                        {
                            "featureType": "administrative.country",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "administrative.province",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "administrative.locality",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "administrative.neighborhood",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "administrative.land_parcel",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "landscape.man_made",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "simplified"
                                }
                            ]
                        },
                        {
                            "featureType": "landscape.natural.landcover",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "on"
                                }
                            ]
                        },
                        {
                            "featureType": "landscape.natural.terrain",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.attraction",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.business",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.government",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.medical",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.park",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "on"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.park",
                            "elementType": "labels",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.place_of_worship",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.school",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "poi.sports_complex",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "road.highway",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "road.highway",
                            "elementType": "labels",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "road.highway.controlled_access",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "road.arterial",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "simplified"
                                }
                            ]
                        },
                        {
                            "featureType": "road.local",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "simplified"
                                }
                            ]
                        },
                        {
                            "featureType": "transit.line",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "transit.station.airport",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "transit.station.bus",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "transit.station.rail",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "water",
                            "elementType": "all",
                            "stylers": [
                                {
                                    "visibility": "on"
                                }
                            ]
                        },
                        {
                            "featureType": "water",
                            "elementType": "labels",
                            "stylers": [
                                {
                                    "visibility": "off"
                                }
                            ]
                        }
                    ]
                };
                var
                        marker;
                mapObject = new google.maps.Map(document.getElementById('map'), mapOptions);
                for (var key in markersData)
                    markersData[key].forEach(function (item) {
                        marker = new google.maps.Marker({
                            position: new google.maps.LatLng(item.location_latitude, item.location_longitude),
                            map: mapObject,
                            icon: '${pageContext.request.contextPath}/views/assets/img/pins/' + key + '.png',
                        });

                        if ('undefined' === typeof markers[key])
                            markers[key] = [];
                        markers[key].push(marker);
                        google.maps.event.addListener(marker, 'click', (function () {
                            closeInfoBox();
                            getInfoBox(item).open(mapObject, this);
                            mapObject.setCenter(new google.maps.LatLng(item.location_latitude, item.location_longitude));
                        }));

                    });

                function hideAllMarkers() {
                    for (var key in markers)
                        markers[key].forEach(function (marker) {
                            marker.setMap(null);
                        });
                }
                ;

                function closeInfoBox() {
                    $('div.infoBox').remove();
                }
                ;

                function getInfoBox(item) {
                    return new InfoBox({
                        content:
                                '<div class="marker_info" id="marker_info">' +
                                '<img src="' + item.map_image_url + '" alt="Image"/>' +
                                '<h3>' + item.name_point + '</h3>' +
                                '<span>' + item.description_point + '</span>' +
                                '<div class="marker_tools">' +
                                '<form action="http://maps.google.com/maps" method="get" target="_blank" style="display:inline-block""><input name="saddr" value="' + item.get_directions_start_address + '" type="hidden"><input type="hidden" name="daddr" value="' + item.location_latitude + ',' + item.location_longitude + '"><button type="submit" value="Get directions" class="btn_infobox_get_directions">Directions</button></form>' +
                                '<a href="tel://' + item.phone + '" class="btn_infobox_phone">' + item.phone + '</a>' +
                                '</div>' +
                                '<a href="' + item.url_point + '" class="btn_infobox">Details</a>' +
                                '</div>',
                        disableAutoPan: false,
                        maxWidth: 0,
                        pixelOffset: new google.maps.Size(10, 125),
                        closeBoxMargin: '5px -20px 2px 2px',
                        closeBoxURL: "http://www.google.com/intl/en_us/mapfiles/close.gif",
                        isHidden: false,
                        alignBottom: true,
                        pane: 'floatPane',
                        enableEventPropagation: true
                    });


                }
                ;

            });
        </script>
        <script src="${pageContext.request.contextPath}/views/assets/js/infobox.js"></script>

        <!-- Carousel -->
        <script>
            $('.carousel-thumbs-2').owlCarousel({
                loop: false,
                margin: 5,
                responsiveClass: true,
                nav: false,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 4,
                        nav: false
                    }
                }
            });
        </script>

        <!--Review modal validation -->
        <script src="${pageContext.request.contextPath}/views/assets/js/validate.js"></script>


    </body>

</html>