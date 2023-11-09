<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="service-man-navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>service man change password</title>
</head>
<body>
	

	<!-- Contact Start -->
	<div class="contact">
		<div class="container">
			<div class="section-header  ">

				<h2>Hello, <%=s.getName() %> update Profile</h2>
			</div>
			
			<%String msg = (String)request.getAttribute("msg"); %>
			<%if(msg!=null){
			out.print(msg);
			}
				
			%>
			<%String msg3 = (String)request.getAttribute("msg3"); %>
			<%if(msg3!=null){
			out.print(msg3);
			}
				
			%>
			
			<div class="row">

				<div class="col-md-7">
					<div class="contact-form">
						<div id="success"></div>


						<form action="ServiceManController" method="post">
							<div class="control-group">
								<input type="hidden" class="form-control" id="name" name="email"
									value="<%=s.getEmail()%>" />
								<p class="help-block text-danger"></p>
							</div>
							
							<div class="control-group">
								<input type="password" class="form-control" id="email" name="op"
									placeholder="enter old password" />
								<p class="help-block text-danger"></p>
							</div>
							
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
									id="sendMessageButton" name="action" value="update password">change password</button>
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