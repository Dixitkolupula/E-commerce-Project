<%@include file="CommonHeader.jsp" %>

<html>
<body>


<form action="<c:url value='/displayproduct/'/>" method="post">

<br/>
<br/>
<div class="row">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="image">
    
    <img alt="${product.productId}"  src="<c:url value='/images/${product.productId}.jpg'/>" width="300" height="400">
</div>
<div class="content">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table align="right">
<br/>

<thead>
<tr>
<th>Product Details</th>
</tr>
</thead>
<tr>
<th>ProductID:${product.productId}</th>
</tr>
<tr>
<th>Product Name:${product.productName}</th>
</tr>
<tr>
<th>Price:${product.price}</th>
</tr>
<tr>
<th>Stock:${product.stock}</th>
</tr>
<tr>
<th>ProductDesc: <br/>${product.productdesc}</th>
</tr>
<tr>
<td>Number of quantities</td>
<th><select name="qnty">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select></th>
 </tr>
<tr>
<th>Category:${product.category}</th>
</tr>
<tr>
<th>Supplier:${product.supplier}</th>
</tr>
<tr>
<td><a href="<c:url value='/addtoCart/'/>" class="btn btn-info">Add to Cart</a></td>
</tr>
</table>

</div>
</div>
</form>
</body></html>