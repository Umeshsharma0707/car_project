<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Service"%>
    <%@ include file="service-man-navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit service</title>
</head>
<body>

<!-- Contact Start -->




        <div class="contact">
            <div class="container">
                <div class="section-header  ">
                    <p>edit your service</p>
                    <h2>edit here</h2>
                </div>
      
                <div class="row">
                   
                    <div class="col-md-7">
                        <div class="contact-form">
                            <div id="success"></div>
                            <%int id = Integer.parseInt(request.getParameter("id")); %>
                            <%Service s1 = ServiceDao.getSingleServiceById(id); %>
                            
                            <form action="ServiceController" method="post">
                            		<input type="hidden" name="s_id" value="<%=s1.getS_id()%>">
                            	
                            		 <div class="control-group">
                            		  <label>Service Type</label>
                                    <input type="text" class="form-control" id="email" placeholder="service type" name="stype" value="<%=s1.getStype() %>" required="required" data-validation-required-message="Please enter your email" />
                                   <p class="help-block text-danger"></p>
                                </div>
                                
                                <div class="control-group">
                                 <label>Car Model</label>
                                    <input type="text" class="form-control" id="name" placeholder="car model" name="cmodel" value="<%=s1.getCmodel()%>" required="required"  />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                               		 <label>Service Price</label>
                                    <input type="text" class="form-control" id="name" placeholder="service price" name="sprice" value="<%=s1.getSprice() %>" required="required"  />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                <label>Service Duration</label>
                                    <input type="text" class="form-control" id="name" placeholder="service duration" name="duration" value="<%= s1.getDuration() %>" required="required"  />
                                    <p class="help-block text-danger"></p>
                                </div>
                               
                                
                                <div>
                                    <button class="btn btn-custom" type="submit" id="sendMessageButton" name="action" value="update service" >update service</button>
                                </div>
                            </form>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- Contact End -->


        <!-- Footer Start -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-contact">
                            <h2>Get In Touch</h2>
                            <p><i class="fa fa-map-marker-alt"></i>123 Street, New York, USA</p>
                            <p><i class="fa fa-phone-alt"></i>+012 345 67890</p>
                            <p><i class="fa fa-envelope"></i>info@example.com</p>
                            <div class="footer-social">
                                <a class="btn" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn" href=""><i class="fab fa-youtube"></i></a>
                                <a class="btn" href=""><i class="fab fa-instagram"></i></a>
                                <a class="btn" href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-link">
                            <h2>Popular Links</h2>
                            <a href="">About Us</a>
                            <a href="">Contact Us</a>
                            <a href="">Our Service</a>
                            <a href="">Service Points</a>
                            <a href="">Pricing Plan</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-link">
                            <h2>Useful Links</h2>
                            <a href="">Terms of use</a>
                            <a href="">Privacy policy</a>
                            <a href="">Cookies</a>
                            <a href="">Help</a>
                            <a href="">FQAs</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-newsletter">
                            <h2>Newsletter</h2>
                            <form>
                                <input class="form-control" placeholder="Full Name">
                                <input class="form-control" placeholder="Email">
                                <button class="btn btn-custom">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container copyright">
                <p>&copy; <a href="#">Your Site Name</a>, All Right Reserved. Designed By <a href="https://htmlcodex.com">HTML Codex</a></p>
            </div>
        </div>
        <!-- Footer End -->
        
        <!-- Back to top button -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        
        <!-- Pre Loader -->
        <div id="loader" class="show">
            <div class="loader"></div>
        </div>
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