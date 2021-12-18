<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="app.css">
</head>
<body>
	<%@include file = "Header.jsp" %>
	<form class="mx-auto text-white" action="Reception" method="post">
		<h2 class="text-center my-5">LOGIN</h2>
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">Login:</label> 
			<div class="col-sm-8">
				<input type="text" class="form-control" name="login" required> 
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-4 col-form-label">Password:</label>
			<div class="col-sm-8">
				<input type="password" class="form-control" name="password" required>
			</div> 
		</div>
		<div class="form-group row">
			<div class="col-sm-1">
				<input type="radio" class="float-right" name="user" value="Administrator" checked> 
			</div>
			<label class="col-sm-11">Administrator</label>
			<div class="col-sm-1">
				<input type="radio" class="float-right" name="user" value="User"> 
			</div>
			<label class="col-sm-11">User</label>
		</div>
		<div class="d-flex justify-content-center">
			<input type="submit" class="mx-2 p-2 btn btn-primary" value="Submit">
			<button class="mx-2 p-2 btn btn-primary">
				<a href="Login.jsp" class="text-decoration-none text-reset">Reset</a>
			</button>
		</div>
	</form>
</body>
</html>