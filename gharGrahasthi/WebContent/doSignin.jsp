<%@page import="dao.ShoppingDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign in page</title>
</head>
<body>
<%
String id=request.getParameter("uid");
String pass=request.getParameter("pwd");
if(id!=null && pass!=null){
	ShoppingDao sd= new ShoppingDao();
	if(sd.checkLogin(id, pass)){
		 session.setAttribute("id",id);
		 session.setAttribute("pass",pass);
		 response.sendRedirect("home.jsp");
	}

	else{
		response.sendRedirect("loginfail.jsp");
	}
}
else{
%>
<jsp:forward page="signIn.jsp"></jsp:forward>
 <% } %>
</body>
</html>