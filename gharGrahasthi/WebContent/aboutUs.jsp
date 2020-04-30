<% if(session.isNew())
	{
	 response.sendRedirect("login.html");
	}%>
<!DOCTYPE html>
<html>
<title>Contact us</title>
<head>
<style>
img {
    border-radius: 50%;
}

</style>

</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<center><b><h1 style="font-family:Comic Sans Ms;text-align="center";font-size:20pt;
    color:#00FF00;>About us </h1></b>
 <p style="font-family:Comic Sans Ms;text-align="center";font-size:20pt;
    color:#00FF00;>This is a private organisation providing you food and other groceries items at suitable price.</p>
<h2 style="font-family:Comic Sans Ms;text-align="center";font-size:20pt;
    color:#00FF00;>
 Get in touch with us</h2>
<center> <img src="sk1.gif" width="150" height="150"></center>&emsp;

 <p>&emsp;&emsp;&emsp;<b>Phone :</b> 8959082064 , 7415728763</p>
 <p><b>&emsp;&emsp;&emsp;Email :</b> satyamkhare05071999@gmail.com</p>
 <p>&emsp;&emsp;<b>Alternate Email :</b>iamsk@gmail.com</p>

</body>
</html>
