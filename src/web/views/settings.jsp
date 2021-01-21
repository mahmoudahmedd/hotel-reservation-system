
<%@page import="Models.User"%>
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

        <!-- SPECIFIC CSS -->
        <link href="${pageContext.request.contextPath}/views/assets/css/admin.css" rel="stylesheet">

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
                        <div class="col-6"><i class="icon-phone"></i><strong>0045 043204434</strong></div>
                        <div class="col-6">
                            <ul id="top_links">
                                <li><a href="#0">Sign out</a></li>
                            </ul>
                        </div>
                    </div><!-- End row -->
                </div><!-- End container-->
            </div><!-- End top line-->

            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <div id="logo">
                            <a href="index.html"><img src="${pageContext.request.contextPath}/views/assets/img/logo.png" width="160" height="34" alt="City tours" data-retina="true" class="logo_normal"></a>
                            <a href="index.html"><img src="${pageContext.request.contextPath}/views/assets/img/logo_sticky.png" width="160" height="34" alt="City tours" data-retina="true" class="logo_sticky"></a>
                        </div>
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
                                    <a href="javascript:void(0);" class="show-submenu">Home <i class="icon-down-open-mini"></i></a>
                                    <ul>
                                        <li><a href="index.html">Owl Carousel Slider</a></li>
                                        <li><a href="index_22.html">Home items with Carousel</a></li>
                                        <li><a href="index_23.html">Home with Search V2</a></li>
                                        <li class="third-level"><a href="javascript:void(0);">Revolution slider</a>
                                            <ul>
                                                <li><a href="index_24.html">Default slider</a></li>
                                                <li><a href="index_20.html">Basic slider</a></li>
                                                <li><a href="index_14.html">Youtube Hero</a></li>
                                                <li><a href="index_15.html">Vimeo Hero</a></li>
                                                <li><a href="index_17.html">Youtube 4K</a></li>
                                                <li><a href="index_16.html">Carousel</a></li>
                                                <li><a href="index_19.html">Mailchimp Newsletter</a></li>
                                                <li><a href="index_18.html">Fixed Caption</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="index_12.html">Layer slider</a></li>
                                        <li><a href="index_2.html">With Only tours</a></li>
                                        <li><a href="index_3.html">Single image</a></li>
                                        <li><a href="index_4.html">Header video</a></li>
                                        <li><a href="index_7.html">With search panel</a></li>
                                        <li><a href="index_13.html">With tabs</a></li>
                                        <li><a href="index_5.html">With map</a></li>
                                        <li><a href="index_6.html">With search bar</a></li>
                                        <li><a href="index_8.html">Search bar + Video</a></li>
                                        <li><a href="index_9.html">With Text Rotator</a></li>
                                        <li><a href="index_10.html">With Cookie Bar (EU law)</a></li>
                                        <li><a href="index_11.html">Popup Advertising</a></li>
                                    </ul>
                                </li>
                                <li class="submenu">
                                    <a href="javascript:void(0);" class="show-submenu">Tours <i class="icon-down-open-mini"></i></a>
                                    <ul>
                                        <li><a href="all_tours_list.html">All tours list</a></li>
                                        <li><a href="all_tours_grid.html">All tours grid</a></li>
                                        <li><a href="all_tours_grid_masonry.html">All tours Sort Masonry</a></li>
                                        <li><a href="all_tours_map_listing.html">All tours map listing</a></li>
                                        <li><a href="single_tour.html">Single tour page</a></li>
                                        <li><a href="single_tour_with_gallery.html">Single tour with gallery</a></li>
                                        <li class="third-level"><a href="javascript:void(0);">Single tour fixed sidebar</a>
                                            <ul>
                                                <li><a href="single_tour_fixed_sidebar.html">Single tour fixed sidebar</a></li>
                                                <li><a href="single_tour_with_gallery_fixed_sidebar.html">Single tour 2 Fixed Sidebar</a></li>
                                                <li><a href="cart_fixed_sidebar.html">Cart Fixed Sidebar</a></li>
                                                <li><a href="payment_fixed_sidebar.html">Payment Fixed Sidebar</a></li>
                                                <li><a href="confirmation_fixed_sidebar.html">Confirmation Fixed Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="single_tour_working_booking.php">Single tour working booking</a></li>
                                        <li><a href="single_tour_datepicker_v2.html">Date and time picker V2</a></li>
                                        <li><a href="cart.html">Single tour cart</a></li>
                                        <li><a href="payment.html">Single tour booking</a></li>
                                    </ul>
                                </li>
                                <li class="submenu">
                                    <a href="javascript:void(0);" class="show-submenu">Hotels <i class="icon-down-open-mini"></i></a><ul>
                                        <li><a href="all_hotels_list.html">All hotels list</a></li>
                                        <li><a href="all_hotels_grid.html">All hotels grid</a></li>
                                        <li><a href="all_hotels_grid_masonry.html">All hotels Sort Masonry</a></li>
                                        <li><a href="all_hotels_map_listing.html">All hotels map listing</a></li>
                                        <li><a href="single_hotel.html">Single hotel page</a></li>
                                        <li><a href="single_hotel_datepicker_adv.html">Single hotel datepicker adv</a></li>
                                        <li><a href="single_hotel_datepicker_v2.html">Date and time picker V2</a></li>
                                        <li><a href="single_hotel_working_booking.php">Single hotel working booking</a></li>
                                        <li><a href="single_hotel_contact.php">Single hotel contact working</a></li>
                                        <li><a href="cart_hotel.html">Cart hotel</a></li>
                                        <li><a href="payment_hotel.html">Booking hotel</a></li>
                                        <li><a href="confirmation_hotel.html">Confirmation hotel</a></li>
                                    </ul>
                                </li>
                                <li class="submenu">
                                    <a href="javascript:void(0);" class="show-submenu">Transfers <i class="icon-down-open-mini"></i></a>
                                    <ul>
                                        <li><a href="all_transfer_list.html">All transfers list</a></li>
                                        <li><a href="all_transfer_grid.html">All transfers grid</a></li>
                                        <li><a href="all_transfer_grid_masonry.html">All transfers Sort Masonry</a></li>
                                        <li><a href="single_transfer.html">Single transfer page</a></li>
                                        <li><a href="single_transfer_datepicker_v2.html">Date and time picker V2</a></li>
                                        <li><a href="cart_transfer.html">Cart transfers</a></li>
                                        <li><a href="payment_transfer.html">Booking transfers</a></li>
                                        <li><a href="confirmation_transfer.html">Confirmation transfers</a></li>
                                    </ul>
                                </li>
                                <li class="submenu">
                                    <a href="javascript:void(0);" class="show-submenu">Restaurants <i class="icon-down-open-mini"></i></a>
                                    <ul>
                                        <li><a href="all_restaurants_list.html">All restaurants list</a></li>
                                        <li><a href="all_restaurants_grid.html">All restaurants grid</a></li>
                                        <li><a href="all_restaurants_grid_masonry.html">All restaurants Sort Masonry</a></li>
                                        <li><a href="all_restaurants_map_listing.html">All restaurants map listing</a></li>
                                        <li><a href="single_restaurant.html">Single restaurant page</a></li>
                                        <li><a href="single_restaurant_datepicker_v2.html">Date and time picker V2</a></li>
                                        <li><a href="payment_restaurant.html">Booking restaurant</a></li>
                                        <li><a href="confirmation_restaurant.html">Confirmation transfers</a></li>
                                    </ul>
                                </li>
                                <li class="megamenu submenu">
                                    <a href="javascript:void(0);" class="show-submenu-mega">Bonus<i class="icon-down-open-mini"></i></a>
                                    <div class="menu-wrapper">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <h3>Header styles</h3>
                                                <ul>
                                                    <li><a href="index.html">Default transparent</a></li>
                                                    <li><a href="header_2.html">Plain color</a></li>
                                                    <li><a href="header_3.html">Plain color on scroll</a></li>
                                                    <li><a href="header_4.html">With socials on top</a></li>
                                                    <li><a href="header_5.html">With language selection</a></li>
                                                    <li><a href="header_6.html">With lang and conversion</a></li>
                                                    <li><a href="header_7.html">With full horizontal menu</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4">
                                                <h3>Footer styles</h3>
                                                <ul>
                                                    <li><a href="index.html">Footer default</a></li>
                                                    <li><a href="footer_2.html">Footer style 2</a></li>
                                                    <li><a href="footer_3.html">Footer style 3</a></li>
                                                    <li><a href="footer_4.html">Footer style 4</a></li>
                                                    <li><a href="footer_5.html">Footer style 5</a></li>
                                                    <li><a href="footer_6.html">Footer style 6</a></li>
                                                    <li><a href="footer_7.html">Footer style 7</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4">
                                                <h3>Shop section</h3>
                                                <ul>
                                                    <li><a href="shop.html">Shop</a></li>
                                                    <li><a href="shop-single.html">Shop single</a></li>
                                                    <li><a href="shopping-cart.html">Shop cart</a></li>
                                                    <li><a href="checkout.html">Shop Checkout</a></li>
                                                </ul>
                                            </div>
                                        </div><!-- End row -->
                                    </div><!-- End menu-wrapper -->
                                </li>
                                <li class="megamenu submenu">
                                    <a href="javascript:void(0);" class="show-submenu-mega">Pages<i class="icon-down-open-mini"></i></a>
                                    <div class="menu-wrapper">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <h3>Pages</h3>
                                                <ul>
                                                    <li><a href="about.html">About us</a></li>
                                                    <li><a href="general_page.html">General page</a></li>
                                                    <li><a href="tourist_guide.html">Tourist guide</a></li>
                                                    <li><a href="wishlist.html">Wishlist page</a></li>
                                                    <li><a href="faq.html">Faq</a></li>
                                                    <li><a href="faq_2.html">Faq smooth scroll</a></li>
                                                    <li><a href="pricing_tables.html">Pricing tables</a></li>
                                                    <li><a href="gallery_3_columns.html">Gallery 3 columns</a></li>
                                                    <li><a href="gallery_4_columns.html">Gallery 4 columns</a></li>
                                                    <li><a href="grid_gallery_1.html">Grid gallery</a></li>
                                                    <li><a href="grid_gallery_2.html">Grid gallery with filters</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4">
                                                <h3>Pages</h3>
                                                <ul>
                                                    <li><a href="contact_us_1.html">Contact us 1</a></li>
                                                    <li><a href="contact_us_2.html">Contact us 2</a></li>
                                                    <li><a href="blog_right_sidebar.html">Blog</a></li>
                                                    <li><a href="blog.html">Blog left sidebar</a></li>
                                                    <li><a href="login.html">Login</a></li>
                                                    <li><a href="register.html">Register</a></li>
                                                    <li><a href="invoice.html" target="_blank">Invoice</a></li>
                                                    <li><a href="404.html">404 Error page</a></li>
                                                    <li><a href="site_launch/index.html">Site launch / Coming soon</a></li>
                                                    <li><a href="timeline.html">Tour timeline</a></li>
                                                    <li><a href="page_with_map.html"><i class="icon-map"></i>  Full screen map</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-lg-4">
                                                <h3>Elements</h3>
                                                <ul>
                                                    <li><a href="footer_2.html"><i class="icon-columns"></i> Footer with working newsletter</a></li>
                                                    <li><a href="footer_5.html"><i class="icon-columns"></i> Footer with Twitter feed</a></li>
                                                    <li><a href="icon_pack_1.html"><i class="icon-inbox-alt"></i> Icon pack 1 (1900)</a></li>
                                                    <li><a href="icon_pack_2.html"><i class="icon-inbox-alt"></i> Icon pack 2 (100)</a></li>
                                                    <li><a href="icon_pack_3.html"><i class="icon-inbox-alt"></i> Icon pack 3 (30)</a></li>
                                                    <li><a href="icon_pack_4.html"><i class="icon-inbox-alt"></i> Icon pack 4 (200)</a></li>
                                                    <li><a href="icon_pack_5.html"><i class="icon-inbox-alt"></i> Icon pack 5 (360)</a></li>
                                                    <li><a href="shortcodes.html"><i class="icon-tools"></i> Shortcodes</a></li>
                                                    <li><a href="newsletter_template/newsletter.html" target="blank"><i class=" icon-mail"></i> Responsive email template</a></li>
                                                    <li><a href="admin.html"><i class="icon-cog-1"></i>  Admin area</a></li>
                                                </ul>
                                            </div>
                                        </div><!-- End row -->
                                    </div><!-- End menu-wrapper -->
                                </li>
                            </ul>
                        </div><!-- End main-menu -->
                        <ul id="top_tools">
                            <li>
                                <a href="javascript:void(0);" class="search-overlay-menu-btn"><i class="icon_search"></i></a>
                            </li>
                            <li>
                                <div class="dropdown dropdown-cart">
                                    <a href="#" data-toggle="dropdown" class="cart_bt"><i class="icon_bag_alt"></i><strong>3</strong></a>
                                    <ul class="dropdown-menu" id="cart_items">
                                        <li>
                                            <div class="image"><img src="${pageContext.request.contextPath}/views/assets/img/thumb_cart_1.jpg" alt="image"></div>
                                            <strong><a href="#">Louvre museum</a>1x $36.00 </strong>
                                            <a href="#" class="action"><i class="icon-trash"></i></a>
                                        </li>
                                        <li>
                                            <div class="image"><img src="${pageContext.request.contextPath}/views/assets/img/thumb_cart_2.jpg" alt="image"></div>
                                            <strong><a href="#">Versailles tour</a>2x $36.00 </strong>
                                            <a href="#" class="action"><i class="icon-trash"></i></a>
                                        </li>
                                        <li>
                                            <div class="image"><img src="${pageContext.request.contextPath}/views/assets/img/thumb_cart_3.jpg" alt="image"></div>
                                            <strong><a href="#">Versailles tour</a>1x $36.00 </strong>
                                            <a href="#" class="action"><i class="icon-trash"></i></a>
                                        </li>
                                        <li>
                                            <div>Total: <span>$120.00</span></div>
                                            <a href="cart.html" class="button_drop">Go to cart</a>
                                            <a href="payment.html" class="button_drop outline">Check out</a>
                                        </li>
                                    </ul>
                                </div><!-- End dropdown-cart-->
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- container -->
        </header>
        <!-- End Header -->

        <section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/views/assets/img/admin_top.jpg" data-natural-width="1400" data-natural-height="470">
            <div class="parallax-content-1">
                <div class="animated fadeInDown">
                    <h1>Hello!</h1>
         
                </div>
            </div>
        </section>
        <!-- End section -->

        <main>
            <div id="position">
                <div class="container">
                    <ul>
                        <li><a href="#section-1" class="icon-booking"><span>Bookings</span></a>
						</li>
                        <li><a href="#">Settings</a>
                        </li>
                        
                    </ul>
                </div>
            </div>
            <!-- End Position -->

            <div class="margin_60 container">
                <div id="tabs" class="tabs">
                    <nav>
                        <ul>
                            <% 
                                if((String)request.getAttribute("message") != null )
                                {
                                    if(!request.getAttribute("message").toString().equals("Done!"))
                                    {
                                        out.print(
                                            "<div class='alert alert-danger' role='alert'>" 
                                            + (String)request.getAttribute("message") 
                                            + "</div>");
                                    }
                                    else
                                    {
                                        out.print(
                                            "<div class='alert alert-success' role='alert'>" 
                                            + (String)request.getAttribute("message") 
                                            + "</div>");
                                    }
                                    
                                }
                        
                                User user = (User) request.getAttribute("user");

                            %>
                            <li><a href="#section-1" class="icon-profile"><span>Profile</span></a>
                            </li>
                        </ul>
                    </nav>
                    <div class="content">

                        <section id="section-1">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4>Your profile</h4>
                                    <ul id="profile_summary">
                                        <li>Username <span><%=user.getUsername()%></span>
                                        </li>
                                        <li>First name <span><%=user.getFirstName()%></span>
                                        </li>
                                        <li>Last name <span><%=user.getLastName()%></span>
                                        </li>
                                        <li>Phone number <span><%=user.getPhoneNumber()%></span>
                                        </li>
                                        <li>Email <span><%=user.getEmail()%></span>
                                        </li>
                                        
                                    </ul>
                                </div>

                            </div>
                            <!-- End row -->

                            <div class="divider"></div>
                            <form action="${pageContext.request.contextPath}/settings" method="POST">


                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Edit profile</h4>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>First name</label>
                                            <input class="form-control" name="first_name" id="first_name" type="text" value="<%=user.getFirstName()%>">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Last name</label>
                                            <input class="form-control" name="last_name" id="last_name" type="text" value="<%=user.getLastName()%>">
                                        </div>
                                    </div>
                                        <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input class="form-control" name="email" id="email" type="email" value="<%=user.getEmail()%>">
                                        </div>
                                    </div>
                                </div>
                                <!-- End row -->

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Phone number</label>
                                            <input class="form-control" name="phone_number" id="email_2" type="text" value="<%=user.getPhoneNumber()%>">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Username <small></small>
                                            </label>
                                            <input class="form-control"  type="text" disabled value="<%=user.getUsername()%>">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control" name="password1" id="email_2" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Password Confirmation <small></small>
                                            </label>
                                            <input class="form-control"  name="password2" type="text" >
                                        </div>
                                    </div>
                                </div>
                                <!-- End row -->
                                <button type="submit" class="btn_1 green">Update Profile</button>
                            </form>

                        </section>
                        <!-- End section 4 -->

                        <section id="section-2">
                            <div class="row">
                                <div class="col-lg-4 col-md-6">
                                    <div class="hotel_container">
                                        <div class="img_container">
                                            <a href="single_hotel.html">
                                                <img src="${pageContext.request.contextPath}/views/assets/img/hotel_1.jpg" width="800" height="533" class="img-fluid" alt="Image">
                                                <div class="ribbon top_rated">
                                                </div>
                                                <div class="score">
                                                    <span>7.5</span>Good
                                                </div>
                                                <div class="short_info hotel">
                                                    From/Per night<span class="price"><sup>$</sup>59</span>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="hotel_title">
                                            <h3><strong>Park Hyatt</strong> Hotel</h3>
                                            <div class="rating">
                                                <i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
                                            </div>
                                            <!-- end rating -->
                                            <div class="wishlist_close_admin">
                                                -
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End box tour -->
                                </div>
                                <!-- End col-md-6 -->

                                <div class="col-lg-4 col-md-6 ">
                                    <div class="hotel_container">
                                        <div class="img_container">
                                            <a href="single_hotel.html">
                                                <img src="${pageContext.request.contextPath}/views/assets/img/hotel_2.jpg" width="800" height="533" class="img-fluid" alt="Image">
                                                <div class="ribbon top_rated">
                                                </div>
                                                <div class="score">
                                                    <span>9.0</span>Superb
                                                </div>
                                                <div class="short_info hotel">
                                                    From/Per night<span class="price"><sup>$</sup>45</span>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="hotel_title">
                                            <h3><strong>Mariott</strong> Hotel</h3>
                                            <div class="rating">
                                                <i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
                                            </div>
                                            <!-- end rating -->
                                            <div class="wishlist_close_admin">
                                                -
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End box -->
                                </div>
                                <!-- End col-md-6 -->

                                <div class="col-lg-4 col-md-6">
                                    <div class="tour_container">
                                        <div class="img_container">
                                            <a href="single_tour.html">
                                                <img src="${pageContext.request.contextPath}/views/assets/img/tour_box_1.jpg" width="800" height="533" class="img-fluid" alt="Image">
                                                <div class="ribbon top_rated">
                                                </div>
                                                <div class="short_info">
                                                    <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>45</span>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="tour_title">
                                            <h3><strong>Arc Triomphe</strong> tour</h3>
                                            <div class="rating">
                                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                                            </div>
                                            <!-- end rating -->
                                            <div class="wishlist_close_admin">
                                                -
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End box tour -->
                                </div>
                                <!-- End col-md-6 -->

                                <div class="col-lg-4 col-md-6">
                                    <div class="tour_container">
                                        <div class="img_container">
                                            <a href="single_tour.html">
                                                <img src="${pageContext.request.contextPath}/views/assets/img/tour_box_3.jpg" width="800" height="533" class="img-fluid" alt="Image">
                                                <div class="ribbon popular">
                                                </div>
                                                <div class="short_info">
                                                    <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>45</span>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="tour_title">
                                            <h3><strong>Versailles</strong> tour</h3>
                                            <div class="rating">
                                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                                            </div>
                                            <!-- end rating -->
                                            <div class="wishlist_close_admin">
                                                -
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End box tour -->
                                </div>
                                <!-- End col-md-6 -->

                                <div class="col-lg-4 col-md-6">
                                    <div class="tour_container">
                                        <div class="img_container">
                                            <a href="single_tour.html">
                                                <img src="${pageContext.request.contextPath}/views/assets/img/tour_box_4.jpg" width="800" height="533" class="img-fluid" alt="Image">
                                                <div class="ribbon popular">
                                                </div>
                                                <div class="short_info">
                                                    <i class="icon_set_1_icon-30"></i>Walking tour<span class="price"><sup>$</sup>45</span>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="tour_title">
                                            <h3><strong>Pompidue</strong> tour</h3>
                                            <div class="rating">
                                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                                            </div>
                                            <!-- end rating -->
                                            <div class="wishlist_close_admin">
                                                -
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End box tour -->
                                </div>
                                <!-- End col-md-6 -->

                                <div class="col-lg-4 col-md-6">
                                    <div class="transfer_container">
                                        <div class="img_container">
                                            <a href="single_transfer.html">
                                                <img src="${pageContext.request.contextPath}/views/assets/img/transfer_1.jpg" width="800" height="533" class="img-fluid" alt="Image">
                                                <div class="ribbon top_rated">
                                                </div>
                                                <div class="short_info">
                                                    From/Per person<span class="price"><sup>$</sup>45</span>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="transfer_title">
                                            <h3><strong>Orly Airport</strong> private</h3>
                                            <div class="rating">
                                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                                            </div>
                                            <!-- end rating -->
                                            <div class="wishlist_close_admin">
                                                -
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End box tour -->
                                </div>
                                <!-- End col-md-6 -->

                            </div>
                            <!-- End row -->
                            <button type="submit" class="btn_1 green">Update wishlist</button>
                        </section>
                        <!-- End section 2 -->

                        <section id="section-3">
                            <div class="row">
                                <div class="col-md-6 add_bottom_30">
                                    <h4>Change your password</h4>
                                    <div class="form-group">
                                        <label>Old password</label>
                                        <input class="form-control" name="old_password" id="old_password" type="password">
                                    </div>
                                    <div class="form-group">
                                        <label>New password</label>
                                        <input class="form-control" name="new_password" id="new_password" type="password">
                                    </div>
                                    <div class="form-group">
                                        <label>Confirm new password</label>
                                        <input class="form-control" name="confirm_new_password" id="confirm_new_password" type="password">
                                    </div>
                                    <button type="submit" class="btn_1 green">Update Password</button>
                                </div>
                                <div class="col-md-6 add_bottom_30">
                                    <h4>Change your email</h4>
                                    <div class="form-group">
                                        <label>Old email</label>
                                        <input class="form-control" name="old_password" id="old_password" type="password">
                                    </div>
                                    <div class="form-group">
                                        <label>New email</label>
                                        <input class="form-control" name="new_password" id="new_password" type="password">
                                    </div>
                                    <div class="form-group">
                                        <label>Confirm new email</label>
                                        <input class="form-control" name="confirm_new_password" id="confirm_new_password" type="password">
                                    </div>
                                    <button type="submit" class="btn_1 green">Update Email</button>
                                </div>
                            </div>
                            <!-- End row -->

                            <hr>
                            <br>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Notification settings</h4>
                                    <table class="table table-striped options_cart">
                                        <tbody>
                                            <tr>
                                                <td style="width:10%">
                                                    <i class="icon_set_1_icon-33"></i>
                                                </td>
                                                <td style="width:60%">
                                                    New Citytours Tours
                                                </td>
                                                <td style="width:35%">
                                                    <label class="switch-light switch-ios pull-right">
                                                        <input type="checkbox" name="option_1" id="option_1" checked value="">
                                                        <span>
                                                            <span>No</span>
                                                            <span>Yes</span>
                                                        </span>
                                                        <a></a>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <i class="icon_set_1_icon-6"></i>
                                                </td>
                                                <td>
                                                    New Citytours Hotels
                                                </td>
                                                <td>
                                                    <label class="switch-light switch-ios pull-right">
                                                        <input type="checkbox" name="option_2" id="option_2" value="">
                                                        <span>
                                                            <span>No</span>
                                                            <span>Yes</span>
                                                        </span>
                                                        <a></a>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <i class="icon_set_1_icon-26"></i>
                                                </td>
                                                <td>
                                                    New Citytours Transfers
                                                </td>
                                                <td>
                                                    <label class="switch-light switch-ios pull-right">
                                                        <input type="checkbox" name="option_3" id="option_3" value="" checked>
                                                        <span>
                                                            <span>No</span>
                                                            <span>Yes</span>
                                                        </span>
                                                        <a></a>
                                                    </label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <i class="icon_set_1_icon-81"></i>
                                                </td>
                                                <td>
                                                    New Citytours special offers
                                                </td>
                                                <td>
                                                    <label class="switch-light switch-ios pull-right">
                                                        <input type="checkbox" name="option_4" id="option_4" value="">
                                                        <span>
                                                            <span>No</span>
                                                            <span>Yes</span>
                                                        </span>
                                                        <a></a>
                                                    </label>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <button type="submit" class="btn_1 green">Update notifications settings</button>
                                </div>
                            </div>
                            <!-- End row -->
                        </section>
                        <!-- End section 3 -->

                        <section id="section-4">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4>Your profile</h4>
                                    <ul id="profile_summary">
                                        <li>Username <span>info@clara.com</span>
                                        </li>
                                        <li>First name <span>Clara</span>
                                        </li>
                                        <li>Last name <span>Tomson</span>
                                        </li>
                                        <li>Phone number <span>+00 032 42366</span>
                                        </li>
                                        <li>Date of birth <span>13/04/1975</span>
                                        </li>
                                        <li>Street address <span>24 Rue de Rivoli</span>
                                        </li>
                                        <li>Town/City <span>Paris</span>
                                        </li>
                                        <li>Zip code <span>002843</span>
                                        </li>
                                        <li>Country <span>France</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        <img src="${pageContext.request.contextPath}/views/assets/img/tourist_guide_pic.jpg" alt="Image" class="img-fluid styled profile_pic">
                                    </p>
                                </div>
                            </div>
                            <!-- End row -->

                            <div class="divider"></div>

                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Edit profile</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>First name</label>
                                        <input class="form-control" name="first_name" id="first_name" type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Last name</label>
                                        <input class="form-control" name="last_name" id="last_name" type="text">
                                    </div>
                                </div>
                            </div>
                            <!-- End row -->

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone number</label>
                                        <input class="form-control" name="email_2" id="email_2" type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Date of birth <small>(dd/mm/yyyy)</small>
                                        </label>
                                        <input class="form-control" name="email" id="email" type="text">
                                    </div>
                                </div>
                            </div>
                            <!-- End row -->

                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <h4>Edit address</h4>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Street address</label>
                                        <input class="form-control" name="first_name" id="first_name" type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>City/Town</label>
                                        <input class="form-control" name="last_name" id="last_name" type="text">
                                    </div>
                                </div>
                            </div>
                            <!-- End row -->

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Zip code</label>
                                        <input class="form-control" name="email" id="email" type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Country</label>
                                        <select id="country" class="form-control" name="country">
                                            <option value="">Select...</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- End row -->

                            <hr>
                            <h4>Upload profile photo</h4>
                            <div class="form-inline upload_1">
                                <div class="form-group">
                                    <input type="file" name="files[]" id="js-upload-files" multiple>
                                </div>
                                <button type="submit" class="btn_1 green" id="js-upload-submit">Upload file</button>
                            </div>
                            <!-- Drop Zone -->
                            <h5>Or drag and drop files below</h5>
                            <div class="upload-drop-zone" id="drop-zone">
                                Just drag and drop files here
                            </div>
                            <!-- Progress Bar -->
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                    <span class="sr-only">60% Complete</span>
                                </div>
                            </div>
                            <!-- Upload Finished -->
                            <div class="js-upload-finished">
                                <h5>Processed files</h5>
                                <div class="list-group">
                                    <a href="#" class="list-group-item list-group-item-success"><span class="badge alert-success pull-right">Success</span>image-01.jpg</a>
                                </div>
                            </div>
                            <!-- End Hidden on mobiles -->

                            <hr>
                            <button type="submit" class="btn_1 green">Update Profile</button>
                        </section>
                        <!-- End section 4 -->

                    </div>
                    <!-- End content -->
                </div>
                <!-- End tabs -->
            </div>
            <!-- end container -->
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

        <!-- Specific scripts -->
        <script src="${pageContext.request.contextPath}/views/assets/js/tabs.js"></script>
        <script>
            new CBPFWTabs(document.getElementById('tabs'));
        </script>
        <script>
            $('.wishlist_close_admin').on('click', function (c) {
                $(this).parent().parent().parent().fadeOut('slow', function (c) {
                });
            });
        </script>

    </body>

</html>