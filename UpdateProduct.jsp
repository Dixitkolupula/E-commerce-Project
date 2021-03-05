<%@include file="CommonHeader.jsp" %>

<div class="container"> 
<div class="col-xs-12 col-sm-6 col-md-6">
<form action="<c:url value='/updateProduct'/>" method="post" align="center">
<table class="table table-bordered table-responsive" align="center">
   <tr bgcolor="c98d00">
       <td colspan="2"><center>Update Product</center></td>
       </tr>
       <tr bgcolor="FFEBCD">
          <td>Product ID</td>
          <td><input type="text" name="productId" id="productId" value="${product.productId}" readonly/></td>
        </tr>
        <tr bgcolor="FFEBCD">
           <td>Product  Name</td>
           <td><input type="text"   name="productName" id="productName" value="${product.productName}"/>
        </td></tr>
        <tr bgcolor="FFEBCD">
          <td>Price</td>
          <td><input type="text"   name="price" id="price" value="${product.price}"/></td>
          </tr>
          <tr bgcolor="FFEBCD">
          <td>Stock</td>
          <td><input type="text"   name="stock" id="stock" value="${product.stock}"/></td>
          </tr>
          <tr bgcolor="FFEBCD">
          <td>Product Description</td>
          <td><textarea rows="5" column="50" name="productdesc"></textarea></td>
          </tr> 
          <tr bgcolor="FFEBCD">
          <td>Category</td>
          <td><input type="text"   name="category" id="category" value="${product.category}"/></td>
          </tr>
           <tr bgcolor="FFEBCD" >
          <td>Supplier</td>
          <td><input type="text"   name="supplier" id="supplier" value="${product.supplier}"/></td>
          </tr>
          <tr >
          <tr >
          <td  bgcolor="c98d00" colspan="2">
          <center>
          <input type="submit" value="Update"/>
          </center>
         </td>
      </tr>    
</table>
</form>
</div>