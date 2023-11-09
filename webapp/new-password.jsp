<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>set new password</title>
</head>
<body>
	<% String email = (String)request.getAttribute("email"); %>

	<!-- Contact Start -->
	<div class="contact">
		<div class="container">
			<div class="section-header  ">

				
			
			<div class="row">

				<div class="col-md-7">
					<div class="contact-form">
						<div id="success"></div>


						<form action="ServiceManController" method="post">
							 <input type="hidden" value="<%=email%>">
							
						
							
							<div class="control-group">
								<input type="password" class="form-control" id="email" name="np"
									placeholder="enter new password" />
								<p class="help-block text-danger"></p>
							</div>
							<div class="control-group">
								<input type="password" class="form-control" id="email" name="cnp"
									placeholder="confirm new password" />
								<p class="help-block text-danger"></p>
							</div>


							<div>
								<button class="btn btn-custom" type="submit"
									id="sendMessageButton" name="action" value="change password">change password</button>
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