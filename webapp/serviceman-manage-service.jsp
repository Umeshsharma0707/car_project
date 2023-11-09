<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="service-man-navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>service-man Manage services</title>
</head>
<body>
	<div class="contact">
		<div class="container">
			<div class="section-header col-md-12">
				<p>Manage Your service</p>
				<h2>Manage here</h2>
			</div>

			<%
			String UpdateMsg = (String) request.getAttribute("UpdateMsg");
			%>
			<%
			if (UpdateMsg != null) {
			%>
			<h5>
				<%
				out.print(UpdateMsg);
				%>
			</h5>
			<%
			}
			%>
			<%
			String deleteMsg = (String) request.getAttribute("deleteMsg");
			%>
			<%
			if (deleteMsg != null) {
			%>
			<h5>
				<%
				out.print(deleteMsg);
				%>
			</h5>
			<%
			}
			%>
			<table class="table table-dark col-md-12">
				<thead>
					<tr>

						<th scope="col">Service Type</th>
						<th scope="col">Car Model</th>
						<th scope="col">Service Price</th>
						<th scope="col">Service Duration</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Service> slist = ServiceDao.getServiceById(s.getId());
					%>
					<%
					for (Service s1 : slist) {
					%>

					<tr>
						<th scope="row"><%=s1.getStype()%></th>
						<td><%=s1.getCmodel()%></td>

						<td><%=s1.getSprice()%>/- only</td>
						<td><%=s1.getDuration()%></td>
						<td><a
							href="service-single-list-edit.jsp?id=<%=s1.getS_id()%>"
							style="color: white">Edit</a></td>
						<td><a
							href="serviceman-delete-service.jsp?id=<%=s1.getS_id()%>"
							style="color: white">Delete</a></td>



					</tr>
					<%
					}
					%>
				</tbody>
				<%	
				if (slist.isEmpty()) {
				%>
				<h2>
					<%
					out.print("no service found please upload");
					%>
				</h2>
				<%
				}
				%>


			</table>


		</div>
	</div>

	<!-- Footer Start -->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer-contact">
						<h2>Get In Touch</h2>
						<p>
							<i class="fa fa-map-marker-alt"></i>123 Street, New York, USA
						</p>
						<p>
							<i class="fa fa-phone-alt"></i>+012 345 67890
						</p>
						<p>
							<i class="fa fa-envelope"></i>info@example.com
						</p>
						<div class="footer-social">
							<a class="btn" href=""><i class="fab fa-twitter"></i></a> <a
								class="btn" href=""><i class="fab fa-facebook-f"></i></a> <a
								class="btn" href=""><i class="fab fa-youtube"></i></a> <a
								class="btn" href=""><i class="fab fa-instagram"></i></a> <a
								class="btn" href=""><i class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-link">
						<h2>Popular Links</h2>
						<a href="">About Us</a> <a href="">Contact Us</a> <a href="">Our
							Service</a> <a href="">Service Points</a> <a href="">Pricing Plan</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-link">
						<h2>Useful Links</h2>
						<a href="">Terms of use</a> <a href="">Privacy policy</a> <a
							href="">Cookies</a> <a href="">Help</a> <a href="">FQAs</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-newsletter">
						<h2>Newsletter</h2>
						<form>
							<input class="form-control" placeholder="Full Name"> <input
								class="form-control" placeholder="Email">
							<button class="btn btn-custom">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="container copyright">
			<p>
				&copy; <a href="#">Your Site Name</a>, All Right Reserved. Designed
				By <a href="https://htmlcodex.com">HTML Codex</a>
			</p>
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
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
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