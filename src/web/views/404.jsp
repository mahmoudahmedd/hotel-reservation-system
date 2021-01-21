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
                        <div class='alert alert-danger' role='alert'>
                            404
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