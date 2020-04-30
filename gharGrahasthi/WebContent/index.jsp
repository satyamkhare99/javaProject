<html>
<title>homePage</title>
<style>
#menu{
 background-color:infobackground;
 width: auto;
 height:auto;
 font-family: inherit;
 padding:5px;
 border: Solid black 2px;
  }
  
</style>

<body>
<jsp:include page="headSimple.html"></jsp:include>
</center>
<nav>

<div id="menu">
<a style="color:black;" href="signUp.jsp">Sign Up</a> |
<a style="color:black;" href="signIn.jsp">Sign In</a> 
</div></nav>
<br>
<marquee width="100%" direction="right" height="50px" hspace="10">
Stay home stay safe,Wash your hand many times a day,Use hand sanitizer,Maintain social distancing.
</marquee>
<img src="covid19.gif" width="480" height="450">
<img src="corona1.gif" width="480" height="450">
<img src="corona2.gif" width="480" height="450">

<marquee width="100%" direction="right" height="50px" hspace="10" onmouseover="this.stop();" onmouseout="this.start();">
for more information visit <a href="https://mohfw.gov.in">Ministry of health and family welfare</a> ,For Helpline no. <a href="https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf">click here</a></h3>
</marquee>
</body></html>