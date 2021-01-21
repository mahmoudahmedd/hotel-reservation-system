<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="search_container">
    <div id="search">
        <ul class="nav nav-tabs">

            <li><a href="#hotels" data-toggle="tab" class="active">Hotels</a></li>

        </ul>

        <div class="tab-content">
            <form method="GET" action="${pageContext.request.contextPath}/search">
                <div class="tab-pane active show" id="hotels">
                    <h3>Search Hotels in Egypt</h3>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label><i class="icon-calendar-7"></i> Check in</label>
                                <input class="date-pick form-control" data-date-format="d-m-yyyy" type="text" name="check_in">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label><i class="icon-calendar-7"></i> Check out</label>
                                <input class="date-pick form-control" data-date-format="d-m-yyyy" type="text" name="check_out">
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-6">
                            <div class="form-group">
                                <label>Adults</label>
                                <div class="numbers-row">
                                    <input type="text" value="1" id="adults" class="qty2 form-control" name="adults">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-6">
                            <div class="form-group">
                                <label>Children</label>
                                <div class="numbers-row">
                                    <input type="text" value="0" id="children" class="qty2 form-control" name="children">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End row -->
                    <div class="row">
                        <div class="col-md-6">
                            <%@ include file="../governorates.jsp" %>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Hotel name</label>
                                <input type="text" class="form-control" id="hotel_name" name="hotel_name" placeholder="Optionally type hotel name">
                            </div>
                        </div>
                    </div>
                    <!-- End row -->
                    <hr>
                    <div class="col text-center">
                        <button class="btn_1 green "><i class="icon-search"></i>Search now</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</section>