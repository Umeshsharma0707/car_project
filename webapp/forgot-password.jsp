<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forgot password </title>
</head>
<body>

<% String msg = (String)request.getAttribute("msg"); %>
<% if(msg!=null){
	 out.print(msg);
}
%>


<!-- Login page Start -->
        <div class="contact">
            <div class="container">
                <div class="section-header  ">
                    <p>forgot password</p>
                    <h2>reset password here</h2>
                </div>
                

                
                <div class="row">
                   
                    <div class="col-md-7">
                        <div class="contact-form">
                            <div id="success"></div>
                            
                            
                            <form action="ServiceManController" method="post">
                               
                                <div class="control-group">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                
                                <div>
                                    <button class="btn btn-custom" type="submit" id="sendMessageButton" name="action" value="get otp" >get otp</button>
                                </div>
                                <a href="serviceman-login.jsp">Login here</a>
                            </form>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- Contact End -->


       <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
</body>
</html>