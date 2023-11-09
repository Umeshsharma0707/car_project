<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Service"%>
    <%@ include file="service-man-navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete service</title>
</head>
<body>

                            <%int id = Integer.parseInt(request.getParameter("id")); %>
                            <%Service s1 = ServiceDao.getSingleServiceById(id); %>
                            <%ServiceDao.deleteService(id); %>
                            <%request.setAttribute("deleteMsg","service delete succesfully");%>
                            <%request.getRequestDispatcher("serviceman-manage-service.jsp");%>
                            <%response.sendRedirect("serviceman-manage-service.jsp"); %>
                         
                           
</body>
</html>