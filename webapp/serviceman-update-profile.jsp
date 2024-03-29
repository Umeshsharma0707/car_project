<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="service-man-navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>AutoWash - Car Wash Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free Website Template" name="keywords">
<meta content="Free Website Template" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%
	String UpdateMsg = (String) request.getAttribute("UpdateMsg");
	%>
	<%
	if (UpdateMsg != null) {
		out.print(UpdateMsg);
	}
	%>

	<!-- Contact Start -->
	<div class="contact">
		<div class="container">
			<div class="section-header  ">

				<h2>Hello, <%=s.getName() %> update Profile</h2>
			</div>

			<div class="row">

				<div class="col-md-7">
					<div class="contact-form">
						<div id="success"></div>


						<form action="ServiceManController" method="post">
							<div class="control-group">
								<input type="hidden" class="form-control" id="name" name="id"
									value="<%=s.getId()%>" />
								<p class="help-block text-danger"></p>
							</div>
							<div class="control-group">

								<input type="text" class="form-control" id="name" name="name"
									value="<%=s.getName()%>" />
								<p class="help-block text-danger"></p>
							</div>


							<div class="control-group">

								<input type="text" class="form-control" id="name" name="contact"
									value="<%=s.getContact()%>" />
								<p class="help-block text-danger"></p>
							</div>

							<div class="control-group">

								<input type="text" class="form-control" id="name" name="address"
									value="<%=s.getAddress()%>" />
								<p class="help-block text-danger"></p>
							</div>

							<div class="control-group">

								<input type="email" class="form-control" id="email" name="email"
									value="<%=s.getEmail()%>" />
								<p class="help-block text-danger"></p>
							</div>


							<div>
								<button class="btn btn-custom" type="submit"
									id="sendMessageButton" name="action" value="update">Update</button>
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