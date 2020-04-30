<%@page import="dao.ShoppingDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.CartModel"%>

<% 
   if(session.isNew())
       response.sendRedirect("signIn.jsp");
%>
<html>
<head>
<title>show cart</title>
</head>
<body>
<jsp:include page="headSimple.html"></jsp:include><br>
<% 
int cid=(int)session.getAttribute("cid");
ShoppingDao sd=new ShoppingDao();
List<CartModel> elist=sd.viewCart(cid);
 if(elist!=null){
	 for(CartModel c:elist){
	%>
	<table align="center" border="1">
	<tr><th>Order ID</th><th>Vegetables Pack</th><th>Groceries Pack</th><th>qty</th><th>Customer ID</th></tr>
 <tr><td><%=c.getOid() %></td><td><%=c.getVegetables() %></td><td><%=c.getGroceries() %></td><td><%=c.getQty() %></td><td><%=cid %></td></tr> 
 </table>
  <%
 }
	 }
  else{ %>
<h2>no items</h2><br>
<% 
 }

%>
<a style="color: teal;" href="home.jsp">back</a><br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;

</body>
</html>