
<%@include file="CommonHeader.jsp" %>

<html>
<body>
<head>
<style>
body {
  background-color:#FFFFFF;
       }
</style>
</head>

<div style="background-color:cyan">
Welcome : ${sessionScope.username}
</div>

<br/>
<div class="container">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="row text-center text-lg-left">
<c:forEach items="${sessionScope.productList}" var="product">
<div class="col-lg-3 col-md-4 col-md-6">

<img alt="${product.productId}" src="<c:url value='/images/${product.productId}.jpg'/>" class="img-thumbnail" ;>
<div class="caption">
<p><a href="<c:url value='/productdisplay/${product.productId}'/>">${product.productName}</a></p>
</div>
</div>     
</c:forEach>
</div>
</div>


</body>
</html>