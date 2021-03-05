<%@include file="CommonHeader.jsp" %>

<div class="container">
<div class="row"> 
<div class="col-xs-12 col-sm-6 col-md-6">
<form action="<c:url value='/InsertSupplier'/>"method="post" align="center">
<table class="table table-bordered table-responsive" align="center">
   <tr bgcolor="c98d00">
       <th colspan="2"><center>Insert Supplier</center></th>
       </tr>
       <tr bgcolor="FFEBCD" >
          <td>Supplier ID</td>
          <td><input type="text" name="supplierId"/></td>
        </tr>
        <tr bgcolor="FFEBCD">
           <td>Supplier  Name</td>
           <td><input type="text"   name="supplierName"/>
        </td></tr>
         <tr bgcolor="FFEBCD">
          <td>Supplied Item</td>
          <td><textarea rows="2" cols="20" name="suppliedItem"></textarea></td>
          </tr>
        <tr bgcolor="FFEBCD">
          <td>Supplier Adress</td>
          <td><textarea rows="5" cols="50" name="Adress"></textarea></td>
          </tr>
          <tr>
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
<div class="col-xs-12 col-sm-8 col-md-8"> 
<table class="table table-bordered table-responsive"align="center">
  <thead bgcolor="03d156">
      <th>Supplier ID</th> 
      <th>Supplier Name</th>
      <th>Supplied Item</th>
      <th>Supplier Adress</th>
      <th colspan="2">Operation</th>
    </thead>
 <c:forEach  items="${supplierList}" var="supplier">
   <tr>
       <td bgcolor="FFEBCD">${supplier.supplierId}</td>
       <td bgcolor="FFEBCD">${supplier.supplierName}</td>
       <td bgcolor="FFEBCD">${supplier.suppliedItem}</td>
       <td bgcolor="FFEBCD">${supplier.adress}</td>
       <td bgcolor="FFEBCD"><a href="<c:url value='deleteSupplier/${supplier.supplierId}'/> "class="btn btn-danger">Delete</a></td>
       <td bgcolor="FFEBCD"><a href="<c:url value='editSupplier/${supplier.supplierId}'/>" class="btn btn-info">Update</a></td>     
     </tr>
     </c:forEach>
     </table>
     </div>
     </div>
 </div>
     
   
 