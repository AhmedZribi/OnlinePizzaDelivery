<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="pizza.Order, pizza.Pizza, java.util.List, java.util.ArrayList" %>

<% 	List<Order> orders = new ArrayList<Order>();
	orders = (List<Order>)application.getAttribute("orders");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Orders</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="app.css">
</head>
<body class="text-white">
	<%@include file = "Header.jsp" %>
	<h1 class="text-center my-5">WAITING-ORDERS</h1>
	<div class="container w-75">
		<table class="table text-white text-center" border="1">
			<thead>
				<tr>
					<th>LastName</th>
					<th>FirstName</th>
					<th>Address</th>
					<th>Total Cost</th>
				</tr>
			</thead>
			<tbody>
				<%
				if (orders != null) {
					for (Order o : orders) {	
				%>
				<tr>
					<td>
						<%
						out.println(o.getLastName());
						%>
					</td>
					<td>
						<%
						out.println(o.getFirstName());
						%>
					</td>
					<td>
						<%
						out.println(o.getAddress());
						%>
					</td>
					<td>
						<form class="mx-auto" action="Details.jsp" method="GET">
							<input type="hidden" name=<%=o.getId() %>> 
							<input type="submit" class="btn btn-link" value=<%=o.getTotalCost() %>>
						</form>
						
					</td>
				</tr>
				<%
					}
				}
				%>
			</tbody>
		</table>
		<div class="d-flex justify-content-end">
			<button class="btn btn-primary p-2">
				<a href="Save" class="text-decoration-none text-reset">Save</a>
			</button>
		</div>
		<div class="mt-5 d-flex">
			<h5 class="mt-2">Wanna check the revenue?</h5>
			<button class="btn btn-success p-2 ml-2">
				<a href="Revenue.jsp" class="text-decoration-none text-reset">YES</a>
			</button>
			<button class="btn btn-danger p-2 ml-2">
				<a href="Login.jsp" class="text-decoration-none text-reset">NO</a>
			</button>
		</div>
	</div>
	
</body>
</html>