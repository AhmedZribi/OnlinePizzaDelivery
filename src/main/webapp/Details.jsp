<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="pizza.Order, pizza.Pizza, java.util.List, java.util.ArrayList" %>
	
<% 	List<Order> orders = new ArrayList<Order>();
	orders = (List<Order>)application.getAttribute("orders");
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="app.css">
</head>
<body>
	<%@include file = "Header.jsp" %>
	<button class="btn btn-primary ml-5 mt-2 px-4">
		<a href="Orders.jsp" class="text-decoration-none text-reset">Go Back</a>
	</button>
	<div class="container w-25 mt-5">
		<ul class="list-group mt-5">
			<% for(Order o : orders ) {
				if (request.getParameter(o.getId()) != null) {
					for (Pizza p : o.getPizzas()) {
			%>
						<li class="list-group-item"><% out.println(p.getName() + " " + p.getPrice() + "€"); %></li>
			<%			
					}
				}
			}
			%>
			
		</ul>
	</div>
</body>
</html>