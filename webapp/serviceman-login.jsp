<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Login page Start -->
        <div class="contact">
            <div class="container">
                <div class="section-header  ">
                    <p>Service-Man Login</p>
                    <h2>Login here</h2>
                </div>
                
  <% String registerMsg = (String)request.getAttribute("registerMsg"); %>
<% if(registerMsg!=null){
	 out.print(registerMsg);
}
%>
<% String notregisteredMsg = (String)request.getAttribute("notregisteredMsg"); %>
<% if(notregisteredMsg!=null){
	 out.print(notregisteredMsg);
}
%>
<% String passWrngMsg = (String)request.getAttribute("passWrngMsg"); %>
<% if(passWrngMsg!=null){
	 out.print(passWrngMsg);
}
%>
                
                <div class="row">
                   
                    <div class="col-md-7">
                        <div class="contact-form">
                            <div id="success"></div>
                            
                            
                            <form action="ServiceManController" method="post">
                               
                                <div class="control-group">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="control-group">
                                    <input type="text" class="form-control" id="subject" name="password" placeholder="your password" required="required" data-validation-required-message="Please enter a subject" />
                                    <p class="help-block text-danger"></p>
                                </div>
                                
                                <div>
                                    <button class="btn btn-custom" type="submit" id="sendMessageButton" name="action" value="ServiceManlogin" >Login</button>
                                </div>
                                <a href="forgot-password.jsp">Forgot password</a>
                            </form>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
        <!-- Contact End -->

</body>
</html>