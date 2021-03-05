<%@include file="CommonHeader.jsp" %>

<div class="container">
<div class="col-xs-12 col-sm-6 col-md-6">
<form action="<c:url value='/updateSupplier'/>" method="post" align="center">
<table class="table table-bordered table-responsive" align="center">
   <tr bgcolor="c98d00">
       <td colspan="2"><center>Update Supplier</center></td>
       </tr>
       <tr bgcolor="FFEBCD" >
          <td>Supplier ID</td>
          <td><input type="text" name="supplierId" id="supplierId" value="${supplier.supplierId}" /></td>
        </tr>
        <tr bgcolor="FFEBCD">
           <td>Supplier  Name</td>
           <td><input type="text"   name="supplierName" id="supplierName" value="${supplier.supplierName}" />
        </td></tr>
        <tr bgcolor="FFEBCD">
          <td>Supplied Item</td>
          <td><textarea rows="2" cols="20" name="suppliedItem" id="Adress" value="${supplier.suppliedItem}"></textarea></td>
          </tr>
        <tr bgcolor="FFEBCD">
          <td>Address</td>
          <td><textarea rows="5" cols="50" name="Adress" id="Adress" value="${supplier.adress}"></textarea></td>
          </tr>
          <tr>
          <td  bgcolor="c98d00" colspan="2">
          <center>
          <input type="submit" value="Update"/>
          </center>
         </td>
      </tr>    
</table>
</form>
</div>