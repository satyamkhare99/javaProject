<html>
<title>login</title>


</style>

<body>
<jsp:include page="headSimple.html"></jsp:include>
<form action="doSignin.jsp" method="post">
<div id="login">

<br><br>
<h1 style="color: teal;">Log in</h1>
<h3 style="color: red;">error email id or password</h3>
email id<input type="text" name="uid"><br><br>
password<input type="password" name="pwd"><br><br>
<button style="cursor: pointer;color:graytext; ">submit</button><br><br>
<b><a style="color: teal;" href="index.jsp">back</a>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<a style="color: teal;" href="signUp.jsp">Sign up</a></b>
</div>
</form>
</center>

</body></html>