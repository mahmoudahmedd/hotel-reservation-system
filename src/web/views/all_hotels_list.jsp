<%@page import="java.util.List"%>
<%@page import="Models.Hotel"%>
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

        <section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/views/assets/img/hotels_bg.jpg" data-natural-width="1400" data-natural-height="470">
            <div class="parallax-content-1">
                <div class="animated fadeInDown">
                    <h1>Egypt Hotels</h1>
                    <h1>${pageContext.request.getParameter("governorate")}</h1>
                </div>
            </div>
        </section>
        <!-- End section -->

        <main>
            <div id="position">
                <div class="container">
                    <ul>
                        <li><a href="#">Search</a>
                        </li>
                        
                    </ul>
                </div>
            </div>
            <!-- Position -->

            <div class="collapse" id="collapseMap">
                <div id="map" class="map"></div>
            </div>
            <!-- End Map -->

            <div class="container margin_60">

                <div class="row">
                    <aside class="col-lg-3">

                        <form name="studform" method="GET" action="<%=request.getQueryString()%>" >

                            <div id="filters_col">
                                <a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>Filters</a>
                                <div class="collapse show" id="collapseFilters">
                                    <div class="filter_type">
                                        <h6>Price</h6>
                                        <ul>
                                            <select id="priceViewBy" onchange="insertParam('price', 'priceViewBy');">
                                                <option value="">--Select--</option>
                                                <option value="1000"> < 1000</option>
                                                <option value="2000"> < 2000</option>
                                                <option value="4000"> < 4000</option>
                                                <option value="8000"> < 8000</option>
                                          
                                            </select>
                                        </ul>
                                    </div>
                                    <div class="filter_type">
                                        <h6>User Rating</h6>
                                        <ul>
                                            <select id="ratingViewBy" onchange="insertParam('rating', 'ratingViewBy');">
                                                <option value="">--Select--</option>
                                                <option value="1">1</option>
                                                <option value="2"> <= 2</option>
                                                <option value="3"> <= 3</option>
                                                <option value="4"> <= 4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </ul>
                                    </div>
                                    <div class="filter_type">
                                        <h6>Star Category</h6>
                                        <ul>
                                            <select id="ddlViewBy" onchange="insertParam('stars', 'ddlViewBy');">
                                                <option value="">--Select--</option>
                                                <option value="1">1</option>
                                                <option value="2"> <= 2</option>
                                                <option value="3"> <= 3</option>
                                                <option value="4"> <= 4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </ul>
                                    </div>
                                    <div class="filter_type">
                                        <h6>including meals</h6>
                                        <ul>
                                            <select id="mealsViewBy" onchange="insertParam('meals', 'mealsViewBy');">
                                                <option value="">--Select--</option>
                                                <option value="yes">Yes</option>
                                                <option value="no">No</option>
                                            </select>
                                        </ul>
                                    </div>
                                    
                                </div>
                                <!--End collapse -->
                            </div>
                            <!--End filters col-->
                        </form>
                    </aside>
                    <!--End aside -->

                    <div class="col-lg-9">

                        
                        <!--End tools -->
                        <%
                            if (request.getAttribute("hotels") != null) {
                                List<Hotel> hotels = (List<Hotel>) request.getAttribute("hotels");
                                for (Hotel hotel : hotels) {
                        %>

                        <div class="strip_all_tour_list wow fadeIn" data-wow-delay="0.1s">
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <div class="ribbon_3 popular">
                                    </div>

                                    <div class="img_list">
                                        <a href="${pageContext.request.contextPath}/hotel?id=<%=hotel.getId()%>"><img src="${pageContext.request.contextPath}/views/uploads/<%=hotel.getImagePath()%>" alt="Image">
                                            <div class="short_info"></div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="tour_list_desc">
                                        <div class="score"><span><%=(double) hotel.getRates()%></span>
                                        </div>
                                        <div class="rating">
                                            <%
                                                for (int i = 0; i < hotel.getStars(); i++) {
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

                                        </div>
                                        <h3><strong><%=hotel.getName()%></strong> Hotel</h3>
                                        <p><%=hotel.getDescription()%></p>
                                        <p><%=hotel.getAddress()%> - <%=hotel.getZipcode()%></p>
                                        <p>Contact via phone: <%=hotel.getPhoneNumber()%></p>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2">
                                    <div class="price_list">
                                        <div>
                                            <p><a href="${pageContext.request.contextPath}/hotel?id=<%=hotel.getId()%>" class="btn_1">Details</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End strip -->            
                        <%
                                }

                            }
                        %>

                    </div>
                    <!-- End col lg-9 -->
                </div>
                <!-- End row -->
            </div>
            <!-- End container -->
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

        <!-- Common scripts -->
        <script src="${pageContext.request.contextPath}/views/assets/js/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/views/assets/js/common_scripts_min.js"></script>
        <script src="${pageContext.request.contextPath}/views/assets/js/functions.js"></script>

        <!-- Map -->
        <script src="http://maps.googleapis.com/maps/api/js"></script>
        <script src="${pageContext.request.contextPath}/views/assets/js/map_hotels.js"></script>
        <script src="${pageContext.request.contextPath}/views/assets/js/infobox.js"></script>

        <!-- Check box and radio style iCheck -->
        <script>
                                                        $('input').iCheck({
                                                checkboxClass: 'icheckbox_square-grey',
                                                        radioClass: 'iradio_square-grey'
                                                });
                                                        function insertParam(key, id) {
                                                            var e = document.getElementById(id);
var value = e.value;
                                                        key = encodeURIComponent(key);
                                                                value = encodeURIComponent(value);
                                                                // kvp looks like ['key1=value1', 'key2=value2', ...]
                                                                var kvp = document.location.search.substr(1).split('&');
                                                                let i = 0;
                                                                for (; i < kvp.length; i++){
                                                        if (kvp[i].startsWith(key + '=')) {
                                                        let pair = kvp[i].split('=');
                                                                pair[1] = value;
                                                                kvp[i] = pair.join('=');
                                                                break;
                                                        }
                                                        }

                                                        if (i >= kvp.length){
                                                        kvp[kvp.length] = [key, value].join('=');
                                                        }

                                                        // can return this or...
                                                        let params = kvp.join('&');
                                                                // reload page with new params
                                                                document.location.search = params;
                                                                }
        </script>


    </body>

</html>