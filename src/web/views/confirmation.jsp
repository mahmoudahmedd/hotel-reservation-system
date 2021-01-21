<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Header -->
<%@ include file="parts/not_logged_in/header.jsp" %>
<!-- Header End -->
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
<!-- main -->
<main>
    <section id="hero" class="login">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                    <div id="login">
                        <div class='alert alert-success' role='alert'>
                            Done
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<!-- End main -->

<script type="text/javascript">
    setTimeout(function () {
        window.location.replace("login");
    }, 2000);
</script>

<!-- Footer -->
<%@ include file="parts/not_logged_in/footer.jsp" %>
<!-- Footer end -->