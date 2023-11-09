<%@page import="dao.ServiceDao"%>
<%@page import="dao.ServiceManDao"%>
<%@page import="java.util.List"%>
<%@page import="dao.BookServiceDao" %>
<%@page import="model.ServiceMan" %>
<%@page import="model.BookService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="customer-navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer pending services</title>
</head>
<body>

<div class="contact">
		<div class="container">
			<div class="section-header col-md-12">
				<p> Your pending service</p>
				<h2>check here</h2>
			</div>

		<div class="row">	
			<table class="table table-dark col-md-12">
				<thead>
					<tr>

						<th scope="col">Seller Name</th>
						<th scope="col">Service Type</th>
						<th scope="col">Vehicle Model</th>
						<th scope="col">Service Price</th>
						<th scope="col">Service Duration</th>
						<th scope="col">Service Status</th>
						<th scope="col">payment Status</th>
					</tr>
				</thead>
				<tbody>
				
					<%
					List<BookService> list = BookServiceDao.getPendingServiceList(c.getId());
					%>
					<%
					for (BookService s1 : list) {
					%>
				<%ServiceMan s = ServiceManDao.getServiceManDetailsById(s1.getSm_id()); %>
				<%Service ser = ServiceDao.getSingleServiceById(s1.getS_id()); %>
					<tr>
						<th scope="row"><%=s.getName()%></th>
						<td><%=ser.getStype()%></td>
						<td><%=ser.getCmodel()%></td>
						<td><%=ser.getSprice()%>/- only</td>
						<td><%=ser.getDuration()%></td>
						<td><%=s1.getService_status()%></td>
						<td><%=s1.getPayment_status()%></td>
						
						
					</tr>
	<%}%>
	</tbody>
	
	<%if (list.isEmpty()) {%>
	<h2><%out.print("no Pending services found ");%></h2>
	<%}%>


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