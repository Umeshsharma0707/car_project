<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="service-man-navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>service-man upload services</title>
</head>
<body>
<!-- Contact Start -->

        <div class="contact">
            <div class="container">
                <div class="section-header  ">
                    <p>Upload your service</p>
                    <h2>Upload here</h2>
                </div>
                
                
                
                <%String msg = (String)request.getAttribute("msg"); %>
                <%if(msg!=null){ %>
                <h5> <%out.print(msg); %> </h5>
                <%} %>
                
                <div class="row">
                   
                    <div class="col-md-7">
                        <div class="contact-form">
                            <div id="success"></div>
                            
                            
                            <form action="ServiceController" method="post">
                            		<input type="hidden" name="smId" value="<%=s.getId()%>">
                                <div class="control-group">
                                    <input type="text" class="form-control" id="name" name="stype" placeholder="service type" required="required"  />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="text" class="form-control" id="name" name="cmodel" placeholder="Car Model" required="required"  />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="text" class="form-control" id="name" name="sprice" placeholder="service price" required="required"  />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="text" class="form-control" id="email" name="duration" placeholder="Duration" required="required" data-validation-required-message="Please enter your email" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                
                                
                                <div>
                                    <button class="btn btn-custom" type="submit" id="sendMessageButton" name="action" value="upload service" >Upload service</button>
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