<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="pizza.Pizza, java.util.List, java.util.ArrayList"%>

	
<% 
	List<Pizza> pizzas = new ArrayList<Pizza>(); 
	pizzas = (List<Pizza>)session.getAttribute("pizzas");
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>View</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="app.css">
</head>
<body class="text-white">
	<%@include file = "Header.jsp" %>
	<h1 class="text-center my-5">HERE'S YOUR ORDER!</h1>
	<div class="container w-50">
		<table class="table text-white text-center" border="1">
			<thead>
				<tr>
					<th>Pizza</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<%
				int tot = 0;
				if (pizzas != null) {
					for (Pizza p : pizzas) {			
				%>
				<tr>
					<td>
						<%
						out.println(p.getName());
						%>
						<form class="mx-auto" action="Remove" method="GET">
							<input type="hidden" name=<%=p.getName() %>> 
							<input type="submit" class="btn btn-link" value="Remove">
						</form>
	
					</td>
					<td>
						<%
						out.println(p.getPrice() + " €");
						tot += p.getPrice();
						%>
					</td>
				</tr>
				<%
					}
				}
				%>
			</tbody>
		</table>
	</div>
	<div class="float-right m-5">
		<p>
			Total cost:
			<%
			out.println(tot);
			%>
			€
		</p>
		<button class="p-2 btn btn-primary w-100">
			<a href="Form.jsp" class="text-decoration-none text-reset">Validate</a>
		</button>
	</div>
	<div class="float-left m-5">
		<button class="p-2 btn btn-primary w-100 mt-5">
			<a href="Menu.jsp" class="text-decoration-none text-reset p-5">Menu</a>
		</button>
	</div>
</body>
</html>