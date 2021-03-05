
<%@include file="CommonHeader.jsp" %>

<div class="container">
<div class="row">
<div class="col-xs-12 col-sm-6 col-md-6">
<form action="<c:url value='/InsertCategory'/>" method="post" align="center">
<table class="table table-bordered table-responsive" align="center">
   <tr bgcolor="c98d00">
       <th colspan="2"><center>Insert Category</center></th>
       </tr>
       <tr bgcolor="FFEBCD">
          <td>Category ID</td>
          <td><input type="text" name="categoryId"/></td>
        </tr>
        <tr bgcolor="FFEBCD">
           <td>Category  Name</td>
           <td><input type="text"   name="categoryName"/>
        </td></tr>
        <tr bgcolor="FFEBCD">
          <td>Category Description</td>
          <td><textarea rows="5" cols="50" name="categoryDesc"></textarea></td>
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
      <th>Category ID</th> 
      <th>Category Name</th>
      <th>Category Desc</th>
      <th colspan="2">Operation</th>
    </thead>
 <c:forEach  items="${categoryList}" var="category">
   <tr>
       <td bgcolor="FFEBCD">${category.categoryId}</td>
       <td bgcolor="FFEBCD">${category.categoryName}</td>
       <td bgcolor="FFEBCD">${category.categoryDesc}</td>
       <td bgcolor="FFEBCD"><a href="<c:url value='/deleteCategory/${category.categoryId}'/>" class="btn btn-danger">Delete</a></td>
       <td bgcolor="FFEBCD"><a href="<c:url value='/editCategory/${category.categoryId}'/>" class="btn btn-info">Update</a></td>     
     </tr>
     </c:forEach>
     </table>
     </div>
     </div>
 </div>


</body>
</html>