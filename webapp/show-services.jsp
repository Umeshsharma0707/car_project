<%@page import="dao.ServiceDao"%>
<%@page import="model.Service"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="customer-navbar.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show service</title>
</head>
<body>

<div class="section-header  ">
                    <p>Book services here</p>
                 
 </div>
<% List<Service> slist = ServiceDao.getAllService(); %>



<div class="row">
<% for(Service s2:slist){ %>
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"><%=s2.getStype() %></h5>
        <p class="card-text"><%=s2.getCmodel() %></p>
        <p class="card-text"><%=s2.getDuration() %></p>
        <h5 class="card-title"><%=s2.getSprice() %></h5>
        <a href="book-service.jsp?id=<%=s2.getS_id() %>" class="btn btn-primary">Book now</a>
      </div>
    </div>
  </div>
  <%} %>
</div>


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