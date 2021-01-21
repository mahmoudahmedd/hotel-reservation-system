<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Header -->
<%@ include file="parts/not_logged_in/header.jsp" %>
<!-- Header End -->

<!-- main -->
<main>
    <section id="hero" class="login">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-4 col-lg-5 col-md-6 col-sm-8">
                    <div id="login">
                        <form action="register" method="POST" onsubmit="return validate(this)">
                            <%
                                if ((String) request.getAttribute("message") != null) {
                                    out.print(
                                            "<div class='alert alert-danger' role='alert'>"
                                            + (String) request.getAttribute("message")
                                            + "</div>");
                                }
                            %>
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" class=" form-control" name="first_name" placeholder="First Name" >
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" class=" form-control" name="last_name" placeholder="Last Name" >
                            </div>
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" class=" form-control" id="username"  name="username" placeholder="Username" >
                                <span id="user-availability-status"></span> 
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class=" form-control" id="email" name="email" placeholder="Email" >
                                <span id="email-availability-status"></span> 
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="text" class=" form-control" name="phone_number" placeholder="Phone Number">
                            </div>
                            <div class="form-check">
                                <input type="radio" id="client" name="type" value="client">
                                <label for="client">Client</label>
                            </div>
                            <div class="form-check">
                                <input type="radio" id="admin" name="type" value="admin">
                                <label for="admin">Admin</label>
                            </div>
                            <div style="position: relative;" class="g-recaptcha" data-sitekey="6Ld_ISgaAAAAABcTkX17ykch7lLMFkWUKXicQZbL"></div>
                            <div id="pass-info" class="clearfix"></div>
                            <input type="submit" class="btn_full" value="Create an account" />
                            
                            <hr>
                            <a href="login" class="btn_full">Sign in</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<!-- End main -->

<!-- Footer -->
<%@ include file="parts/not_logged_in/footer.jsp" %>



<!-- Footer end -->
<script type="text/javascript">
    var isValidUsername = false;
    var isValidEmail = false;

    $('#username').on('input', function (e) {
        jQuery.ajax({
            url: "http://localhost:8080/HotelReservationSystem/AuthServlet",
            data: 'username=' + $("#username").val(),
            type: "POST",
            success: function (data) {
                if (data == "Username available")
                {
                    isValidUsername = true;
                }
                else
                {
                    isValidUsername = false;
                }
                $("#user-availability-status").html(data);
            },
            error: function () {
                isValidUsername = false;
            }
        });
    });

    $('#email').on('input', function (e) {
        jQuery.ajax({
            url: "http://localhost:8080/HotelReservationSystem/AuthServlet",
            data: 'email=' + $("#email").val(),
            type: "POST",
            success: function (data) {

                if (data == "Email available")
                {
                    isValidEmail = true;
                }
                else
                {
                    isValidEmail = false;
                }

                $("#email-availability-status").html(data);

                if (!ValidateEmail($("#email").val()))
                {
                    isValidEmail = false;
                    $("#email-availability-status").html("Email not valid");
                }
            },
            error: function () {
                isValidEmail = false;
            }
        });
    });

    function validate(form) {
        if (!isValidUsername) {
            alert("Username Unavailable");
            return false;
        }

        if (!isValidEmail) {
            alert("Email Unavailable");
            return false;
        }

        if (form.first_name.value == "") {
            alert("Please provide your first name!");
            return false;
        }

        if (form.last_name.value == "") {
            alert("Please provide your last name!");
            return false;
        }

        if (form.phone_number.value == "") {
            alert("Please provide your phone number!");
            return false;
        }

        if (form.type.value == "") {
            alert("Please provide your type!");
            return false;
        }

        return true;
    }

    function ValidateEmail(inputText)
    {
        const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(inputText);
    }
</script>

