<%@page import="dao.ServiceDao"%>
<%@page import="model.Service"%>
<%@page import="java.util.List" %>
<%@page import="model.Customer" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="customer-navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>book service</title>
</head>
<body>
<div class="section-header  ">
  <p>Book service Now</p>   
 </div>
<% int id = Integer.parseInt(request.getParameter("id")); %>
<% Service s3 = ServiceDao.getSingleServiceById(id); %>

<div class="container">
<div class="row">
  <div class="col-sm-8">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title ">Service Type    : <%=s3.getStype() %></h5>
        <h5 class="card-text ">Car Model        : <%=s3.getCmodel() %></h5>
        <h5 class="card-text ">Service Duration : <%=s3.getDuration() %></h5>
        <h5 class="card-text ">Service Price    : <%=s3.getSprice() %></h5>
        <a href="BookServiceController?action=book&sid=<%= s3.getS_id() %>&cid=<%= c.getId()%>&sm_id=<%=s3.getSm_id() %>"class="btn btn-primary">Book now</a>
        
       
      </div>
    </div>
  </div>
  
</div>
</div>
</body>
</html>