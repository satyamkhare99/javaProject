<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.ShoppingDao" %>
<jsp:useBean class="model.GetSet" id="S">
    <jsp:setProperty property="*" name="S"></jsp:setProperty>  
</jsp:useBean>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ho gya sign up</title>
</head>
<body>
<jsp:include page="headSimple.html"></jsp:include>

<%
S.setCid(Integer.parseInt(request.getParameter("cid")));
S.setName( request.getParameter("nm"));
S.setMobileNo(Integer.parseInt(request.getParameter("mob")));
S.setAddress(request.getParameter("add"));
S.setId(request.getParameter("eid"));
S.setPass(request.getParameter("pwd"));
ShoppingDao sd=new ShoppingDao();
if(sd.signUp(S)>0){
	
 %>
 
 <h2>registered successfully</h2><br>
   <b><a style="color: teal;" href="signUp.jsp">New Account</a>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<a style="color: teal;" href="signIn.jsp">Login</a></b>
 
 <% } 
else{%>
 
 <h1>registration failed!</h1>
 <a href="signUp.jsp">Try again</a>

  <%} %>

</body>
</html>