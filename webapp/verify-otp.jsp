<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>verify otp here</title>
</head>
<body>
<% String email = (String)request.getAttribute("email"); %>
<%int otp = (Integer)request.getAttribute("otp"); %>

<% String otpwrng =(String)request.getAttribute("otpwrng"); %>
<%if(otpwrng!=null){ %>
<h2><%out.print(otpwrng); %></h2>
<%} %>

<!-- Login page Start -->
        <div class="contact">
            <div class="container">
                <div class="section-header  ">
                    <p>forgot password</p>
                    <h2>verify otp here</h2>
                </div>
                

                
                <div class="row">
                   
                    <div class="col-md-7">
                        <div class="contact-form">
                            <div id="success"></div>
                            
                            
                            <form action="ServiceManController" method="post">
                               <input type="hidden" value="<%=email%>">
                                <div class="control-group">
                                    <input type="tel" class="form-control" id="email" name="email" placeholder="enter otp" required="required" data-validation-required-message="Please enter your email" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                
                                <div>
                                    <button class="btn btn-custom" type="submit" id="sendMessageButton" name="action" value="verify otp" >verify otp</button>
                                </div>
                                
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