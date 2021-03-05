<%@include file="CommonHeader.jsp" %>

<div class="container">
<div class="col-xs-12 col-sm-6 col-md-6">
<form action="<c:url value='/updateCategory'/>" method="post" align="center">
<table class="table table-bordered table-responsive" align="center">
   <tr bgcolor="c98d00">
       <td colspan="2"><center>Update Category</center></td>
       </tr>
       <tr bgcolor="FFEBCD">
          <td>Category ID</td>
          <td><input type="text" name="categoryId" id="categoryId" value="${category.categoryId}" readonly/></td>
        </tr>
        <tr bgcolor="FFEBCD">
           <td>Category  Name</td>
           <td><input type="text"   name="categoryName" id="categoryName" value="${category.categoryName}"/>
        </td></tr>
        <tr bgcolor="FFEBCD">
          <td>Category Description</td>
          <td><textarea rows="5" cols="50" name="categoryDesc" id="categoryDesc" value="${category.categoryDesc}"></textarea></td>
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
</body>
</html>