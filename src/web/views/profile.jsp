<%-- 
    Document   : admin
    Created on : Jan 14, 2021, 6:39:44 AM
    Author     : WIN
--%>

<%@page import="Models.Room"%>
<%@page import="Models.UserRate"%>
<%@page import="Models.Hotel"%>
<%@page import="Models.Reservation"%>
<%@page import="java.util.List"%>
<%@page import="Models.User"%>
<%

    Hotel hotel = (Hotel) request.getAttribute("hotel");
    List<Room> rooms = (List<Room>) request.getAttribute("rooms");
    List<UserRate> userRates = (List<UserRate>) request.getAttribute("rates");
    List<User> usersSearch = (List<User>) request.getAttribute("usersSearch");
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
        <title></title>

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

        <!-- SPECIFIC CSS -->
        <link href="${pageContext.request.contextPath}/views/assets/css/admin.css" rel="stylesheet">

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

        <section class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/views/assets/img/admin_top.jpg" data-natural-width="1400" data-natural-height="470">
            <div class="parallax-content-1">
                <div class="animated fadeInDown">
                    <h1>PROFILE</h1>

                </div>
            </div>
        </section>
        <!-- End section -->

        <main>
            <div id="position">
                <div class="container">
                    <ul>
                        <li><a href="#">Profile</a>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- End Position -->

            <div class="margin_60 container">
                <div id="tabs" class="tabs">
                    <nav>
                        <ul>
                            <%                                if (request.getParameter("error") != null) {
                                    if (!request.getParameter("error").toString().equals("Done!")) {
                                        out.print(
                                                "<div class='alert alert-danger' role='alert'>"
                                                + (String) request.getParameter("error")
                                                + "</div>");
                                    } else {
                                        out.print(
                                                "<div class='alert alert-success' role='alert'>"
                                                + (String) request.getParameter("error")
                                                + "</div>");
                                    }

                                }

                                User user = (User) request.getAttribute("user");

                            %>
                            <%                                if (user.getUserType().equals("client")) {
                            %>
                            <li><a href="#section-1" class="icon-booking"><span>Bookings</span></a>
                            </li>
                            <li><a href="#section-2" class="icon-profile"><span>Profile</span></a>
                            </li>

                            <%
                            } else {
                            %>
                            <li><a href="#section-1" class="icon-dashboard"><span>Hotel</span></a>
                            </li>
                            <li><a href="#section-2" class="icon-profile"><span>Profile</span></a>
                            </li>
                            <li><a href="#section-3" class="icon-wishlist"><span>Rates</span></a>
                            </li>
                            <li><a href="#section-4" class="icon-wishlist"><span>Reservation</span></a>
                            </li>
                            <li><a href="#section-5" class="icon-wishlist"><span>Clients</span></a>
                            </li>
                            <li><a href="#section-6" class="icon-wishlist"><span>Add room</span></a>
                            </li>
                            <li><a href="#section-7" class="icon-wishlist"><span>Update/Show Rooms</span></a>
                            </li>
                            <%
                                }
                            %>



                        </ul>
                    </nav>
                    <div class="content">
                        <%
                            if (user.getUserType().equals("client")) {
                        %>
                        <section id="section-1">

                            <!--/tools -->
                            <%
                                if (request.getAttribute("resevations") != null) {
                                    List<Reservation> reservations = (List<Reservation>) request.getAttribute("resevations");

                                    for (Reservation reservation : reservations) {
                            %>

                            <div class="strip_booking">
                                <div class="row">
                                    <div class="col-lg-2 col-md-2">
                                        <div class="date">
                                            <span class="month">In: <%= reservation.getCheckInDate()%></span>
                                            <span class="day">Out: <%= reservation.getCheckOutDate()%></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-5">
                                        <h3 class="hotel_booking">Room ID <%= reservation.getRoomId()%> </h3>
                                        <h3 >Status <%= reservation.getStatus()%> </h3>
                                    </div>
                                    <div class="col-lg-2 col-md-3">
                                        <ul class="info_booking">
                                            <li><strong>Booking id</strong> <%= reservation.getId()%></li>
                                            <li><strong>Booked on</strong> <%= reservation.getCreationDate()%></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-2">

                                        <%
                                            if (!reservation.getStatus().equals("canceled") && !reservation.getStatus().equals("confirmed") && !reservation.getStatus().equals("check_out")) {
                                        %>
                                        <div class="booking_buttons">
                                            <form action="${pageContext.request.contextPath}/profile" method="POST">
                                                <input type="hidden" name="reservation_id" value="<%= reservation.getId()%>"/>
                                                <input type="hidden" name="room_id" value="<%= reservation.getRoomId()%>"/>
                                                <input type="hidden" name="req_type" value="cancel_reservation"/>
                                                <input type="submit" class="btn_2" value="Cancel"/>
                                            </form>
                                        </div>
                                        <%
                                            }
                                        %>
                                        <%
                                            if (!reservation.getStatus().equals("canceled") && !reservation.getStatus().equals("confirmed") && !reservation.getStatus().equals("check_out")) {
                                        %>
                                        <div class="booking_buttons">
                                            <form action="${pageContext.request.contextPath}/profile" method="POST">
                                                <input type="hidden" name="reservation_id" value="<%= reservation.getId()%>"/>
                                                <input type="hidden" name="room_id" value="<%= reservation.getRoomId()%>"/>
                                                <input type="hidden" name="req_type" value="change_reservation"/>
                                                <input type="submit" class="btn_2" value="Change"/>
                                            </form>
                                        </div>
                                        <%
                                            }
                                        %>
                                    </div>
                                </div>
                                <!-- End row -->
                            </div>
                            <%
                                    }
                                }
                            %>




                        </section>
                        <!-- End section 1 -->

                        <!-- End section 2 id="section-3" -->
                        <section id="section-2">
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
                                        <li>User Type <span><%=user.getUserType()%></span>
                                        </li>

                                    </ul>
                                </div>

                            </div>
                            <!-- End row -->

                            <div class="divider"></div>
                            <form action="${pageContext.request.contextPath}/profile" method="POST">

                                <input name="req_type" type="hidden" value="update_profile" />
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


                        <%
                            }
                        %>

                        <%
                            if (user.getUserType().equals("admin")) {
                        %>
                        <section id="section-1">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4>Hotel profile</h4>
                                    <ul id="profile_summary">
                                        <li>Name <span><%=hotel.getName()%></span>
                                        </li>
                                        <li>description <span><%=hotel.getDescription()%></span>
                                        </li>
                                        <li>phone_number <span><%=hotel.getPhoneNumber()%></span>
                                        </li>
                                        <li>rates <span><%=hotel.getRates()%></span>
                                        </li>
                                        <li>number_of_rates <span><%=hotel.getNumberOfRates()%></span>
                                        </li>
                                        <li>stars <span><%=hotel.getStars()%></span>
                                        </li>
                                        <li>address <span><%=hotel.getAddress()%></span>
                                        </li>
                                        <li>governorate <span><%=hotel.getGovernorate()%></span>
                                        </li>
                                        <li>city <span><%=hotel.getCity()%></span>
                                        </li>
                                        <li>zipcode <span><%=hotel.getZipcode()%></span>
                                        </li>
                                        <li>longitude <span><%=hotel.getLongitude()%></span>
                                        </li>
                                        <li>latitude <span><%=hotel.getLatitude()%></span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        <img src="${pageContext.request.contextPath}/views/uploads/<%=hotel.getImagePath()%>" alt="Image" class="img-fluid styled profile_pic">
                                    </p>
                                </div>
                            </div>
                            <!-- End row -->

                            <div class="divider"></div>
                            <form action="${pageContext.request.contextPath}/profile" method="POST">
                                <input name="hotel_id" type="hidden" value="<%=hotel.getId()%>" />
                                <input name="req_type" type="hidden" value="update_hotel" />
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Edit Hotel</h4>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input class="form-control" name="name" id="first_name" type="text" value="<%=hotel.getName()%>">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>description</label>
                                            <input class="form-control" name="description" id="last_name" type="text" value="<%=hotel.getDescription()%>">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>phone_number</label>
                                            <input class="form-control" name="phone_number" id="email" type="text" value="<%=hotel.getPhoneNumber()%>">
                                        </div>
                                    </div>
                                </div>
                                <!-- End row -->
                                <div class="row">

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>stars</label>
                                            <label>Stars</label>
                                            <select class="form-control" name="stars">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>address</label>
                                            <input class="form-control" name="address" id="last_name" type="text" value="<%=hotel.getAddress()%>">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <%@ include file="parts/governorates.jsp" %>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>city</label>
                                            <input class="form-control" name="city" id="email_2" type="text" value="<%=hotel.getCity()%>">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>zipcode <small></small>
                                            </label>
                                            <input class="form-control"  type="text" name="zipcode" value="<%=hotel.getZipcode()%>">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>longitude</label>
                                            <input class="form-control" name="longitude" id="email_2" type="text" value="<%=hotel.getLongitude()%>">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>latitude <small></small>
                                            </label>
                                            <input class="form-control"  name="latitude" type="text" value="<%=hotel.getLatitude()%>">
                                        </div>
                                    </div>
                                </div>
                                <!-- End row -->
                                <button type="submit" class="btn_1 green">Update Hotel</button>
                            </form>
                            <hr>
                            <form method="post" enctype="multipart/form-data">
                                <input name="hotel_id" type="hidden" value="<%=hotel.getId()%>" />
                                <input name="req_type" type="hidden" value="update_picture" />
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>update_picture</h4>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">

                                            <label>Image</label>
                                            <input id="file" class="form-control" name="file" type="file" required="">
                                        </div>
                                    </div></div>
                                <<button id="but_upload"> Upload </button>
                            </form>
                        </section>
                        <!-- End section 4 -->

                        <section id="section-2">
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
                                        <li>User Type <span><%=user.getUserType()%></span>
                                        </li>

                                    </ul>
                                </div>

                            </div>
                            <!-- End row -->

                            <div class="divider"></div>
                            <form action="${pageContext.request.contextPath}/profile" method="POST">

                                <input name="req_type" type="hidden" value="update_profile" />
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

                        <section id="section-3">
                            <%

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
                                <h3><%= userRate.firstName%> <%= userRate.lastName%></h3>
                                <small> - <%= userRate.date%> -</small>

                                <p>
                                    <%= userRate.comment%>
                                </p>

                            </div>
                            <%
                                }

                            %>

                        </section>               
                        <!-- End section 3 -->
                        <section id="section-4">
                            <div class="booking_buttons" id="hotels">

                                <form action="${pageContext.request.contextPath}/profile" method="GET">

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label><i class="icon-calendar-7"></i> Check in</label>
                                                <input class="date-pick form-control" data-date-format="d-m-yyyy" type="date" name="check_in">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label><i class="icon-calendar-7"></i> Check out</label>
                                                <input class="date-pick form-control" data-date-format="d-m-yyyy" type="date" name="check_out">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label><i ></i> </label>
                                                <input type="submit" class="btn_full" value="search"/>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <br>
                            <!--/tools -->
                            <%                                if (request.getAttribute("res") != null) {
                                    List<Reservation> reservations = (List<Reservation>) request.getAttribute("res");

                                    for (Reservation reservation : reservations) {
                            %>

                            <div class="strip_booking">
                                <div class="row">
                                    <div class="col-lg-2 col-md-2">
                                        <div class="date">
                                            <span class="month">In: <%= reservation.getCheckInDate()%></span>
                                            <span class="day">Out: <%= reservation.getCheckOutDate()%></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-5">
                                        <h3 class="hotel_booking">Room ID <%= reservation.getRoomId()%> </h3>
                                        <h3 >User ID <%= reservation.getUserId()%> </h3>
                                        <h3 >Status <%= reservation.getStatus()%> </h3>
                                    </div>
                                    <div class="col-lg-2 col-md-3">
                                        <ul class="info_booking">
                                            <li><strong>Booking id</strong> <%= reservation.getId()%></li>
                                            <li><strong>Booked on</strong> <%= reservation.getCreationDate()%></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-2 col-md-2">

                                        <%
                                            if (!reservation.getStatus().equals("canceled") && !reservation.getStatus().equals("check_out")) {
                                        %>
                                        <div class="booking_buttons">
                                            <form action="${pageContext.request.contextPath}/profile" method="POST">
                                                <input type="hidden" name="reservation_id" value="<%= reservation.getId()%>"/>
                                                <input type="hidden" name="room_id" value="<%= reservation.getRoomId()%>"/>
                                                <input type="hidden" name="req_type" value="cancel_reservation"/>
                                                <input type="submit" class="btn_2" value="Cancel"/>
                                            </form>
                                        </div>
                                        <%
                                            }
                                        %>
                                        <%
                                            if (!reservation.getStatus().equals("confirmed") && !reservation.getStatus().equals("check_out") && !reservation.getStatus().equals("canceled")) {
                                        %>
                                        <div class="booking_buttons">
                                            <form action="${pageContext.request.contextPath}/profile" method="POST">
                                                <input type="hidden" name="reservation_id" value="<%= reservation.getId()%>"/>
                                                <input type="hidden" name="room_id" value="<%= reservation.getRoomId()%>"/>
                                                <input type="hidden" name="user_id" value="<%= reservation.getUserId()%>"/>
                                                <input type="hidden" name="req_type" value="confirm_reservation"/>
                                                <input type="submit" class="btn_2" value="confirm"/>
                                            </form>
                                        </div>
                                        <%
                                            }
                                        %>
                                        <%
                                            if (reservation.getStatus().equals("confirmed") && !reservation.getStatus().equals("check_out")) {
                                        %>
                                        <div class="booking_buttons">
                                            <form action="${pageContext.request.contextPath}/profile" method="POST">
                                                <input type="hidden" name="reservation_id" value="<%= reservation.getId()%>"/>
                                                <input type="hidden" name="room_id" value="<%= reservation.getRoomId()%>"/>
                                                <input type="hidden" name="req_type" value="check_out"/>
                                                <input type="submit" class="btn_2" value="Check out"/>
                                            </form>
                                        </div>
                                        <%
                                            }
                                        %>

                                    </div>
                                </div>
                                <!-- End row -->
                            </div>
                            <%
                                    }
                                }
                            %>




                        </section>
                        <section id="section-5">
                            <div class="booking_buttons" id="hotels">

                                <form action="${pageContext.request.contextPath}/profile" method="GET">

                                    <div class="row">

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Phone Number</label>
                                                <input class="date-pick form-control" type="text" name="phone_number">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input class="date-pick form-control" type="text" name="email">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label><i ></i> </label>
                                                <input type="submit" class="btn_full" value="search"/>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <%
                                for (User _usersSearch : usersSearch) {
                            %>
                            <div class="review_strip_single">
                                <span><b>ID</b> <%= _usersSearch.getId()%></span>
                                <br>
                                <span><b>Email</b> <%= _usersSearch.getEmail()%></span>
                                <br>
                                <span><b>Phone Number</b> <%= _usersSearch.getPhoneNumber()%></span>
                                <br>
                                <span><b>First Name</b> <%= _usersSearch.getFirstName()%></span>
                                <br>
                                <span><b>Last Name</b> <%= _usersSearch.getLastName()%></span>
                                <br>
                                <span><b>Username</b> <%= _usersSearch.getUsername()%></span>
                                <br>




                            </div>
                            <%
                                }

                            %>
                            <!--/tools -->






                        </section>  
                        <section id="section-6">
                            <div class="booking_buttons" id="hotels">

                                <form action="${pageContext.request.contextPath}/profile" method="post" onsubmit="return validate(this)">

                                    <div class="col-md-6">
                                        <input type="hidden" name="req_type" value="add_room"/>
                                        <div class="form-group">

                                            <input class="date-pick form-control" type="hidden" name="id" value="<%=hotel.getId()%>">
                                        </div>
                                        <div class="form-group">
                                            <label><i class="icon-calendar-7"></i> room number</label>
                                            <input class="date-pick form-control" type="number" name="number" required>
                                        </div>


                                        <div class="form-group">
                                            <label>Room type</label>
                                            <select class="form-control" name="type" required>
                                                <option value="sinlge">Single</option>
                                                <option value="double">Double</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label><i class="icon-calendar-7"></i> number of adults</label>
                                            <input class="date-pick form-control" type="number" name="number_of_adults" required>
                                        </div>
                                        <div class="form-group">
                                            <label><i class="icon-calendar-7"></i> number of children</label>
                                            <input class="date-pick form-control" type="number" name="number_of_children" required>
                                        </div>
                                        <div class="form-group">
                                            <label><i class="icon-calendar-7"></i> price per day</label>
                                            <input class="date-pick form-control" type="number" name="price_per_day" required>
                                        </div>
                                        <div class="form-group">
                                            <label><i class="icon-calendar-7"></i> facilities</label>
                                            <input id="facilities" class="date-pick form-control" type="text" name="facilities" required>
                                            <div id="err-status"></div>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="submit" class="btn_2" value="add_room"/>
                                        </div>
                                    </div>



                                </form>
                            </div>

                            <!--/tools -->






                        </section> 

                        <section id="section-7">
                            <%

                                for (Room room : rooms) {
                            %>
                            <div class="review_strip_single">

                                <form action="${pageContext.request.contextPath}/profile" method="post" onsubmit="return validate2(this)">
                                    <input type="hidden" name="room_id" value="<%= room.getId()%>"/>
                                    <input type="hidden" name="hotel_id" value="<%= room.getHotelId()%>"/>
                                    <input type="hidden" name="is_available" value="<%= room.getIsAvailable()%>"/>
                                    <input type="hidden" name="creation_date" value="<%= room.getCreationDate()%>"/>
                                    <input type="hidden" name="req_type" value="update_room"/>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Room Number</label>
                                                <input class="date-pick form-control" type="number" name="number" value="<%= room.getNumber()%>" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Room Type</label>
                                                <input class="date-pick form-control" type="text" name="type" value="<%= room.getType()%>" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Number Of Adults</label>
                                                <input class="date-pick form-control" type="number" name="number_of_adults" value="<%= room.getNumberOfAdults()%>" required>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Number Of Children </label>
                                                <input class="date-pick form-control" type="number" name="number_of_children" value="<%= room.getNumberOfChildren()%>" required>
                                               
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Price Per Day</label>
                                                <input class="date-pick form-control" type="number" name="price_per_day" value="<%= room.getPricePerDay()%>" required>
                                                
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>Facilities </label>
                                                
                                                <input id="facilities2" class="date-pick form-control" type="text" name="facilities" value="<%= room.getFacilities()%>" required>
                                                <div id="err-status2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <input class="col-md-12 btn_full" type="submit"  value="Update"/>
                                </form>


                            </div>
                            <%
                                }

                            %>

                        </section> 
                        <%                            }
                        %>
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
                                    new CBPFWTabs(document.getElementById('tabs'));</script>
        <script>
            $('.wishlist_close_admin').on('click', function (c) {
                $(this).parent().parent().parent().fadeOut('slow', function (c) {
                });
            });</script>
        <script type="text/javascript">
            <%
                if (user.getUserType().equals("admin")) {
            %>
            $(document).ready(function () {

                $("#but_upload").click(function () {

                    var fd = new FormData();
                    var files = $('#file')[0].files;

                    // Check file selected or not
                    if (files.length > 0) {
                        fd.append('file', files[0]);
                        fd.append("hotel_id", <%=hotel.getId()%>);
                        fd.append("req_type", "update_picture");

                        $.ajax({
                            url: 'profile',
                            type: 'post',
                            data: fd,
                            contentType: false,
                            processData: false,
                            success: function (response) {
                                if (data.success == true) {
                                    setTimeout(function () {
                                        location.reload();
                                    }, 2000);
                                }
                            },
                        });
                    } else {
                        alert("Please select a file.");
                    }
                });
            });
            <%
                }
            %>
        </script>
        <script type="text/javascript">

            var validInput = true;
            $('#facilities').on('input', function (e) {
                var str = $("#facilities").val().toLowerCase();
                var arr = str.split(",");
                var arr1 = ["wifi", "box", "tv", "meals"];

                var result = arr.every(function (val) {
                    return arr1.indexOf(val) >= 0;
                });

                validInput = result;

                if (!result)
                {
                    $("#err-status").html("Error, only elements from this types(meals, tv, wifi, box).");
                }
                else
                {
                    $("#err-status").html("");
                }

                $("#facilities").val(str);
            });

            function validate(form) {
                if (!validInput)
                {
                    alert("Check the error");
                }
                return validInput;
            }
            
            var validInput2 = true;
            $('#facilities2').on('input', function (e) {
                var str = $("#facilities2").val().toLowerCase();
                var arr = str.split(",");
                var arr1 = ["wifi", "box", "tv", "meals"];

                var result = arr.every(function (val) {
                    return arr1.indexOf(val) >= 0;
                });

                validInput2 = result;

                if (!result)
                {
                    $("#err-status2").html("Error, only elements from this types(meals, tv, wifi, box).");
                }
                else
                {
                    $("#err-status2").html("");
                }

                $("#facilities2").val(str);
            });

            function validate2(form) {
                if (!validInput2)
                {
                    alert("Check the error");
                }
                return validInput2;
            }
        </script>
    </body>

</html>
