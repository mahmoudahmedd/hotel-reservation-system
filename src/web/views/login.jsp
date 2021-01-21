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
                        <% 
                            if((String)request.getAttribute("message") != null)
                            {
                                out.print(
                                        "<div class='alert alert-danger' role='alert'>" 
                                        + (String)request.getAttribute("message") 
                                        + "</div>");
                            }
                        %>
                        <form method="POST" action="${pageContext.request.contextPath}/login" name = "myForm" onsubmit = "return(validate());">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class=" form-control " name="email" placeholder="Email" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class=" form-control" name="password" placeholder="Password" required>
                            </div>
                            <p class="small">
                                <a href="#">Forgot Password?</a>
                            </p>
                            <div style="position: relative;" class="g-recaptcha" data-sitekey="6Ld_ISgaAAAAABcTkX17ykch7lLMFkWUKXicQZbL"></div>
                            <hr>
                            <input type="submit" class="btn_full" value="Sign in">
                            <a href="register" class="btn_full_outline">Register</a>
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
<script type = "text/javascript">
      // Form validation code will come here.
      function validate() {
      
         if( document.myForm.email.value == "" ) {
            alert( "Please provide your email!" );
            document.myForm.first_name.focus() ;
            return false;
         }
         if( document.myForm.password.value == "" ) {
            alert( "Please provide your password!" );
            document.myForm.username.focus() ;
            return false;
         }
        
         
         return( true );
      }
   
</script>
