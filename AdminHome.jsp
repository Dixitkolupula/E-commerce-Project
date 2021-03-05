<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>  
</head>
<body>


<div style="background-color:#FF7F50;font-family:Monotype corsiva;">
Welcome : ${sessionScope.username}
</div>

<br/><br/><br/>
<div class="container">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="row text-center text-lg-left">
<c:forEach items="${sessionScope.productList}" var="product">
<div class="col-lg-3 col-md-4 col-md-6">

<img alt="${product.productId}" src="<c:url value='/images/${product.productId}.jpg'/>" class="img-thumbnail" ;>
<div class="caption">
<p>${product.productName}</p>

</div>
</div>     
</c:forEach>
</div>
</div>



</body>
</html>