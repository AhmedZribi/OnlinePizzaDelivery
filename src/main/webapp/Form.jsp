<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Form</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="app.css">
</head>
<body>
	<%@include file = "Header.jsp" %>
	<form class="mx-auto text-white" action="Ordering" method="GET">
		<h2 class="text-center my-5">DELIVERY INFOS</h2>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">LastName</label> 
			<div class="col-sm-10">
				<input type="text" class="form-control" name="lname" required> 
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">FirstName</label> 
			<div class="col-sm-10">
				<input type="text" class="form-control" name="fname" required> 
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">Address</label> 
			<div class="col-sm-10">
				<input type="text" class="form-control" name="address" required> 
			</div>
		</div>
		<div class="d-flex justify-content-center">
			<input type="submit" class="p-2 btn btn-primary w-100" value="Submit">
		</div>
	</form>
</body>
</html>