<%@page import="dao.ShoppingDao"%>
<%! 
 int customer_id; 
%>
<html>
<title>signup</title>
<style>
	.err{
		border:2px solid gray;
	  background: white;
	  color:red;
	  height:20px;
	  width:300px;
	  visibility: hidden;
	 }
</style>
<body>
<jsp:include page="headSimple.html"></jsp:include>
<form action="doSignup.jsp" method="post">
<div id="signup">

<br><br>
<h1 style="color: teal;">Sign up</h1>
<% 
    ShoppingDao sd=new ShoppingDao();
    customer_id=sd.autoIncr();
                      %>  
Customer id<sup style="color: red;">*</sup><input type="text" name="cid" value=<%=customer_id%>><br><br>
Name<sup style="color: red;">*</sup><input type="text" name="nm" id="nm"><br><br>
Mobile no.<sup style="color: red;">*</sup><input type="text" name="mob"><br><br>
Address<sup style="color: red;">*</sup><input type="text" name="add"><br><br>
Email id<sup style="color: red;">*</sup><input type="text" name="eid"><br><br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
Password<sup style="color: red;">*</sup><input type="password" name="pwd" id="pass" onkeyup="show()">(must be 6 characters long)<br>
&emsp;&emsp;&emsp;<div id="out" class="err"></div><br>
<button style="cursor: pointer;color:graytext; " id="btn" onkeyup="show()" disabled="true">submit</button><br><br>
<b><a style="color: teal;" href="index.jsp">back</a>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<a style="color: teal;" href="signIn.jsp">Sign in</a></b>
</div>
</form>
</center>
<script>
var p=document.getElementById("pass");
var x=document.getElementById("out");
var btn=document.getElementById("btn");
function show(){
	var s=p.value;
	if(s.length<6)
	{
		x.innerHTML="Weak Password";
		out.style.visibility="visible";
		btn.disabled=true;
	}
	else
	{
		out.style.visibility="hidden";
		btn.disabled=false;
	}
}
</script>
</body></html>