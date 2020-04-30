<%@page import="dao.ShoppingDao"%>
<%@page import="model.GetSet"%>
<% 
   if(session.isNew())
       response.sendRedirect("signIn.jsp");
%>

<html>
<title>index</title>
<style>
#veg{
   background-color:#B4FBB7;
 width: 580;
 height:450;
 font-family: inherit;
 border: Solid Black 2px;
  padding-left: 30px;
  padding-right: 30px;
  float: left;
}

#pack1{
   background-color:white;
 width: 250;
 height:350;
 font-family: inherit;
 border: Solid Black 2px;
 float: left;
}
#pack2{
   background-color:white;
 width: 250;
 height:350;
 font-family: inherit;
 border: Solid Black 2px;
 float: right;
}
</style>
<body>
<jsp:include page="head.jsp"></jsp:include>
<% 
  GetSet s=null;
  String id=(String)session.getAttribute("id");
  String pass=(String)session.getAttribute("pass");
  ShoppingDao sd=new ShoppingDao();
  s=sd.name_cid(id,pass);
  String name=s.getName();
  int cid=s.getCid();
  session.setAttribute("cid",cid);
%>
<h1>Welcome</h1>
<h2><%=name %>&emsp; (<%=cid %>)</h2>
<div id="veg">
<center>
<center><h2>Vegetables</h2></center>
<div id="pack1">
<h3>Pack 1 (150 Rs.)</h3>
<h3>Pack Code: V1</h3>
<table border="1">
<tr><td><b>Item</b></td><td><b>Weight</b></td></tr>
<tr><td>Potato</td><td>1kg</td></tr>
<tr><td>Tomato</td><td>1kg</td></tr>
<tr><td>Onion</td><td>1kg</td></tr>
<tr><td>Brinjal</td><td>500gm</td></tr>
<tr><td>Ginger</td><td>250gm</td></tr>
<tr><td>Green Chillies</td><td>100gm</td></tr>
<tr><td>Green Coriander leaves</td><td>100gm</td></tr>
</table>
</div>
<div id="pack2">
<h3>Pack 2 (250 Rs.)</h3>
<h3>Pack Code: V2</h3>
<table border="1">
<tr><td><b>Item</b></td><td><b>Weight</b></td></tr>
<tr><td>Potato</td><td>2kg</td></tr>
<tr><td>Tomato</td><td>2kg</td></tr>
<tr><td>Onion</td><td>2kg</td></tr>
<tr><td>Brinjal</td><td>1kg</td></tr>
<tr><td>Ginger</td><td>500gm</td></tr>
<tr><td>Green Chillies</td><td>200gm</td></tr>
<tr><td>Green Coriander leaves</td><td>200gm</td></tr>
</table>
</div>
</div>
&emsp;&emsp;
<div id="veg">
<center><h2>Groceries</h2></center>
<div id="pack1">
<h3>Pack 1 (500 Rs.)</h3>
<h3>Pack Code: G1</h3>
<table border="1">
<b><tr><td><b>Item</b></td><td><b>Weight</b></td></tr></b>
<tr><td>Aashirwaad Aata</td><td>5kg</td></tr>
<tr><td>Basmati Rice</td><td>5kg</td></tr>
<tr><td>Arhar Daal</td><td>2gm</td></tr>
<tr><td>Red Chilli Powder</td><td>250gm</td></tr>
<tr><td>Tumeric Powder</td><td>250gm</td></tr>
<tr><td>Coriander Powder</td><td>250gm</td></tr>
<tr><td>Tata salt</td><td>1kg</td></tr>
<tr><td>Sugar</td><td>2kg</td></tr>
</table>
</div>
<div id="pack2">
<h3>Pack 2 (950 Rs.)</h3>
<h3>Pack Code: G1</h3>
<table border="1">
<b><tr><td><b>Item</b></td><td><b>Weight</b></td></tr></b>
<tr><td>Aashirwaad Aata</td><td>10kg</td></tr>
<tr><td>Basmati Rice</td><td>10kg</td></tr>
<tr><td>Arhar Daal</td><td>4gm</td></tr>
<tr><td>Red Chilli Powder</td><td>500gm</td></tr>
<tr><td>Tumeric Powder</td><td>500gm</td></tr>
<tr><td>Coriander Powder</td><td>500gm</td></tr>
<tr><td>Tata salt</td><td>2kg</td></tr>
<tr><td>Sugar</td><td>4kg</td></tr>
</table>
</div>
</div>
</center>
</body>
</html>