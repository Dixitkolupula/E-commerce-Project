<%@include file="CommonHeader.jsp" %>


<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-3.5 col-md-3.5">
<form action="<c:url value='/InsertProduct'/>" method="post" align="center">
<table class="table table-bordered table-responsive" align="center">
   <tr bgcolor="c98d00">
       <th colspan="2"><center>Insert Product</center></th>
       </tr>
       <tr bgcolor="FFEBCD">
          <td>Product ID</td>
          <td><input type="text" name="productId"/></td>
        </tr>
        <tr bgcolor="FFEBCD">
           <td>Product  Name</td>
           <td><input type="text"   name="productName"/>
        </td></tr>
        <tr bgcolor="FFEBCD">
          <td>Price</td>
          <td><input type="text"   name="price"/>
          </tr>
          <tr bgcolor="FFEBCD" >
          <td>Stock</td>
          <td><input type="text"   name="stock"/>
          </tr>
          <tr bgcolor="FFEBCD">
          <td>Product Description</td>
          <td><textarea rows="5" column="50" name="productdesc"></textarea></td>
          </tr> 
            <tr bgcolor="FFEBCD">
          <td>Category</td>
          <td><input type="text" name="category"/></td>
        </tr>
          <tr bgcolor="FFEBCD">
          <td>Supplier</td>
          <td><input type="text" name="supplier"/></td>
        </tr>
          <tr >
          <td  bgcolor="c98d00" colspan="2">
          <center>
          <input type="submit" value="SUBMIT"/>
          </center>
         </td>
      </tr>    
</table>
</form>    
</div>
</div>

<br/>

<div class="row">
<div class="col-xs-12 col-sm-5.5 col-md-5.5">
<table class="table table-bordered table-responsive"align="center">
  <thead bgcolor="03d156">
      <th>Product ID</th> 
      <th>Product Name</th>
      <th>Price</th>
      <th>Stock</th>
      <th>Product Description</th>
      <th>Category</th>
      <th>Supplier</th>
      <th colspan="2">Operation</th>
    </thead>
 <c:forEach  items="${productList}" var="product">
   <tr>
       <td bgcolor="FFEBCD">${product.productId}</td>
       <td bgcolor="FFEBCD">${product.productName}</td>
       <td bgcolor="FFEBCD">${product.price}</td>
       <td bgcolor="FFEBCD">${product.stock}</td>
       <td bgcolor="FFEBCD">${product.productdesc}</td>
       <td bgcolor="FFEBCD">${product.category}</td>
       <td bgcolor="FFEBCD">${product.supplier}</td>
       <td bgcolor="FFEBCD"><a href="<c:url value='/deleteProduct/${product.productId}'/>" class="btn btn-danger">Delete</a></td>
       <td bgcolor="FFEBCD"><a href="<c:url value='/editProduct/${product.productId}'/>" class="btn btn-info">Update</a></td>     
     </tr>
     </c:forEach>
     </table>
</div>
</div>


</div>
</body>
</html>