<%@ page language="java" contentType="text/html"%>

<%@include file="CommonHeader.jsp" %>
<html>
<head>
<style>
body {
  background-color:#FFFFE0;
       }
</style>
</head>
<div class="container-fluid">
<br/>
<div class="row">
<img src="<c:url value='./images/key1.jpg'/>">
  <div class="col-xs-12 col-sm-5 col-md-4">   
<br/> <br/> <br/> <br/>
<form action="perform_login" method="post">
<table class="table table-bordered table-condensed" align="right">
	<thead>
      <tr bgcolor="orange">
        <th colspan="2">SIGN UP</th>
        </tr>
	<tr>
		<td>Login Name</td>
		<td><input type="text" name="username"/></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password"/></td>
	</tr>
	<tr bgcolor="orange">
		<td colspan="2">
			<center>
			<input type="submit" value="Sign In" class="btn btn-info"/>
			</center>
		</td>
	</tr>
</table>
</form>
</div>
</div>
</body>
</html>