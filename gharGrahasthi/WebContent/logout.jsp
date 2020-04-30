<html>
<head>

<title>ho gye logout</title>
</head>
<body>
<% 
 session.invalidate();
response.sendRedirect("signIn.jsp");
%>
</body>
</html>