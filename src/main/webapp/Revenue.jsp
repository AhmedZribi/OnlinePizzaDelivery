<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="pizza.Pizza, pizza.Order, sql.SqlStatement, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Revenue</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="app.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
</head>
<body>
	<%@include file="Header.jsp"%>
	
	<% 
		SqlStatement ss = new SqlStatement();
		List<Order> orders = ss.getOrders();
		List<Pizza> pizzas = ss.getPizzas();
		List<String>pizzasN = new ArrayList<String>();
		for (Pizza p : pizzas) {
			pizzasN.add(p.getName());
		}
		int total_orders = orders.size();
		int total_income = 0;
		List<Integer> occurrences = new ArrayList<Integer>();
		Set<String> st = new HashSet<String>(pizzasN);
		for (String p : st) {
			int occ = Collections.frequency(pizzasN, p);
			occurrences.add(occ);
		}
		for (Order o : orders) {
			total_income += o.getTotalCost();
		}
	%>
	
	<div class="container bg-light mt-5">
		<canvas id="myChart" class="w-100"></canvas>
		<script>
			var xValues = [ "MARGHERITA", "SALMON", "NAPOLITAINE", "FORMAGGI", "BOLOGNAISE", "TONO", "FRUTTI DE MARE" ];
			var yValues = <%=occurrences%>;
			var barColors = [ "red", "green", "blue", "orange", "brown", "violet", "pink" ];
	
			new Chart("myChart", {
				type : "bar",
				data : {
					labels : xValues,
					datasets : [ {
						backgroundColor : barColors,
						data : yValues
					} ]
				},
				options : {
					legend : {
						display : false
					},
					title : {
						display : true,
						text : "Our Pizza Production For 2021"
					}
				}
			});
		</script>
	</div>
	<div class="mt-5 ml-5 text-light">
		<p>Total Number Of Orders : <strong><%=total_orders %></strong></p>
		<p>Total Income : <strong><%=total_income %> €</strong></p>
	</div>
	<div class="mt-5 mr-5 float-right">
		<button class="btn btn-danger p-2 mb-2">
			<a href="Login.jsp" class="text-decoration-none text-reset">Close</a>
		</button>
	</div>
	
</body>
</html>