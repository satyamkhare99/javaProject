<%@page import="dao.ShoppingDao"%>
<% 
   if(session.isNew())
       response.sendRedirect("signIn.jsp");
%>
<% int oid; %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="headSimple.html"></jsp:include>
<br><br>
<h1 style="color: teal;">Add Product</h1>
<% 
    ShoppingDao sd=new ShoppingDao();
    oid=sd.autoIncrement();
                      %>  
<form action="doAdd.jsp" method="post">
Order id<input type="text" name="oid" value="<%=oid %>"><br><br>
Vegetable Pack Code<input type="text" name="pc1"><br><br>
Groceries Pack Code<input type="text" name="pc2"><br><br>
Quantity<input type="text" name="qty"><br><br>
<button onclick="return(confirm('Add products to cart'))">Submit</button><br><br>
</form>
<b><a style="color: teal;" href="home.jsp">back</a>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
</body>
</html>