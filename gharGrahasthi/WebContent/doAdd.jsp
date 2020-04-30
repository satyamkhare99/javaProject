<%@page import="dao.ShoppingDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean class="model.CartModel" id="c">
    <jsp:setProperty property="*" name="c"></jsp:setProperty>  
</jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ho gya add</title>
</head>
<body>
<jsp:include page="headSimple.html"></jsp:include>
<% 
c.setOid(Integer.parseInt(request.getParameter("oid")));
c.setVegetables(request.getParameter("pc1"));
c.setGroceries(request.getParameter("pc2"));
c.setQty(Integer.parseInt(request.getParameter("qty")));
c.setCid(((int)session.getAttribute("cid")));
ShoppingDao sd=new ShoppingDao();
int r=sd.addProduct(c);
if(r>0){
  %>
  <h2>Product Added</h2>
  <b><a style="color: teal;" href="addProduct.jsp">Add Product</a>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<a style="color: teal;" href="show.jsp">View Cart</a></b>

<%
}
else{
%>
<h2>Oops! Something went wrong</h2>
<h3><a href="addProduct.jsp">please try again</a></h3>
<% } %>
</body>
</html>