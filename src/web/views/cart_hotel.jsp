<%-- 
    Document   : cart_hotel
    Created on : Jan 14, 2021, 1:55:39 AM
    Author     : WIN
--%>
<%@page import="Models.Room"%>
<%

    Room room = (Room) request.getAttribute("room");


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
        <meta name="author" content="Ansonika">
        <title>CITY TOURS - City tours and travel site template by Ansonika</title>

        <!-- Favicons-->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/views/assets/img/favicon.ico" type="image/x-icon">
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

        <section id="hero_2">
            <div class="intro_title">
                <h1>Place your order</h1>
                <div class="bs-wizard row">

                    <div class="col-4 bs-wizard-step active">
                        <div class="text-center bs-wizard-stepnum">Your cart</div>
                        <div class="progress">
                            <div class="progress-bar"></div>
                        </div>
                        <a href="#" class="bs-wizard-dot"></a>
                    </div>

                    <div class="col-4 bs-wizard-step disabled">
                        <div class="text-center bs-wizard-stepnum">-</div>
                        <div class="progress">
                            <div class="progress-bar"></div>
                        </div>

                    </div>

                    <div class="col-4 bs-wizard-step disabled">
                        <div class="text-center bs-wizard-stepnum">Finish!</div>
                        <div class="progress">
                            <div class="progress-bar"></div>
                        </div>
                        <a href="confirmation_hotel.html" class="bs-wizard-dot"></a>
                    </div>

                </div>
                <!-- End bs-wizard -->
            </div>
            <!-- End intro-title -->
        </section>
        <!-- End Section hero_2 -->
        <main>

            <!-- End position -->


            <div class="container margin_60">
                <div class="row">
                    <div class="col-lg-8 add_bottom_15">
                        
                        <div class="alert alert-info" role="alert"><strong>Rooms available</strong> for the selected dates. </div>
                        <div class="form_title">
                            <h3><strong>1</strong>Payment Information</h3>
                            <p>
                                Enter your payment information.
                            </p>
                        </div>
                        <div class="step">
                            <form action="${pageContext.request.contextPath}/cart" method="POST">
                                <input name="check_in"  type="hidden" value="<%=request.getParameter("check_in")%>">
                                <input name="check_out"  type="hidden" value="<%=request.getParameter("check_out")%>">
                                <input name="room_id"  type="hidden" value="<%= room.getId()%>">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group">
                                            <label>Card number</label>
                                            <input type="text" id="card_number" name="card_number" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <img src="${pageContext.request.contextPath}/views/assets/img/cards.png" width="207" height="43" alt="Cards" class="cards">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Expiration date</label>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" id="expire_month" name="expire_month" class="form-control" placeholder="MM">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" id="expire_year" name="expire_year" class="form-control" placeholder="Year">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Security code</label>
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="form-group">
                                                        <input type="text" id="ccv" name="ccv" class="form-control" placeholder="CCV">
                                                    </div>
                                                </div>
                                                <div class="col-8">
                                                    <img src="${pageContext.request.contextPath}/views/assets/img/icon_ccv.gif" width="50" height="29" alt="ccv"><small>Last 3 digits</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="policy">
                                    <input type="submit" class="btn_1 green medium" value="Book now" />
                                </div>
                            </form>
                            <!--End row -->


                            <hr>

                        </div>
                        <!--End step -->


                        <!--End step -->


                        <!--End step -->

                    </div>

                    <aside class="col-lg-4">
                        <div class="box_style_1">
                            <h3 class="inner">- Summary -</h3>
                            <table class="table table_summary">
                                <tbody>
                                    <tr>
                                        <td>
                                            Check in
                                        </td>
                                        <td class="text-right">
                                            <%= request.getParameter("check_in")%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Check out
                                        </td>
                                        <td class="text-right">
                                            <%= request.getParameter("check_out")%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Type
                                        </td>
                                        <td class="text-right">
                                            <%= room.getType()%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Nights
                                        </td>
                                        <td class="text-right">
                                            <%= request.getAttribute("nights")%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Adults
                                        </td>
                                        <td class="text-right">
                                            <%= room.getNumberOfAdults()%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Children
                                        </td>
                                        <td class="text-right">
                                            <%= room.getNumberOfChildren()%>
                                        </td>
                                    </tr>

                                    <tr class="total">
                                        <td>
                                            Total cost
                                        </td>
                                        <td class="text-right">
                                            <%= request.getAttribute("total_cost")%> EGP
                                        </td>
                                    </tr>
                                </tbody>
                            </table>


                        </div>

                    </aside>

                </div>
                <!--End row -->
            </div>
            <!--End container -->
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

        <!-- Modal Single room-->
        <div class="modal fade" id="modal_single_room" tabindex="-1" role="dialog" aria-labelledby="modal_single_room" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="modal_single_room">Single Room</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <p>
                            Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi. Mea liber ridens inermis ei, mei legendos vulputate an, labitur tibique te qui.
                        </p>
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="list_icons">
                                    <li><i class="icon_set_1_icon-86"></i> Free wifi</li>
                                    <li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
                                    <li><i class="icon_set_2_icon-106"></i> Safety box</li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <ul class="list_ok">
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>No scripta electram necessitatibus sit</li>
                                    <li>Quidam percipitur instructior an eum</li>
                                </ul>
                            </div>
                        </div>
                        <!-- End row  -->
                        <div class="owl-carousel owl-theme carousel-thumbs magnific-gallery">
                            <div class="item">
                                <a href="img/carousel/1.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/1.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/2.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/2.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/3.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/3.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/4.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/4.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/4.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/4.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/4.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/4.jpg" alt="Image">
                                </a>
                            </div>
                        </div>
                        <!-- End photo carousel  -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Double room-->
        <div class="modal fade" id="modal_double_room" tabindex="-1" role="dialog" aria-labelledby="modal_double_room" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="modal_double_room">Double Room</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <p>
                            Lorem ipsum dolor sit amet, at omnes deseruisse pri. Quo aeterno legimus insolens ad. Sit cu detraxit constituam, an mel iudico constituto efficiendi. Mea liber ridens inermis ei, mei legendos vulputate an, labitur tibique te qui.
                        </p>
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="list_icons">
                                    <li><i class="icon_set_1_icon-86"></i> Free wifi</li>
                                    <li><i class="icon_set_2_icon-116"></i> Plasma Tv</li>
                                    <li><i class="icon_set_2_icon-106"></i> Safety box</li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <ul class="list_ok">
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>No scripta electram necessitatibus sit</li>
                                    <li>Quidam percipitur instructior an eum</li>
                                </ul>
                            </div>
                        </div>
                        <!-- End row  -->
                        <div class="owl-carousel owl-theme carousel-thumbs magnific-gallery">
                            <div class="item">
                                <a href="img/carousel/1.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/1.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/2.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/2.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/3.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/3.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/4.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/4.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/4.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/4.jpg" alt="Image">
                                </a>
                            </div>
                            <div class="item">
                                <a href="img/carousel/4.jpg" data-effect="mfp-zoom-in"><img src="${pageContext.request.contextPath}/views/assets/img/carousel/4.jpg" alt="Image">
                                </a>
                            </div>
                        </div>
                        <!-- End photo carousel  -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Jquery -->
        <script src="${pageContext.request.contextPath}/views/assets/js/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/views/assets/js/common_scripts_min.js"></script>
        <script src="${pageContext.request.contextPath}/views/assets/js/functions.js"></script>

        <script>
                    $('.carousel-thumbs').owlCarousel({
            loop:true,
                    margin:5,
                    responsiveClass: true,
                    nav:fal se,
                    responsive:{
                    0:{
                    ite ms:1
                    },
                            600:{
                            ite ms:3
                            },
                            1000:{
                            it ems:4,
                                    n av:false,
                                    lo op:false
                            }
                    }
            });
        </script>

    </body>

</html>
