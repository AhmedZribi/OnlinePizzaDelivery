<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Menu</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="app.css">
</head>
<body>
	<%@include file = "Header.jsp" %>
	<form class="mx-auto text-white" style="width: 1000px" action="Add"
		method="get">
		<h1 class="text-center my-5">CHECK OUR MENU!</h1>
		<div class="container">
			<div class="row">
				<div class="col-4 row">
					<img
						src="https://i.ibb.co/HFg3TpH/mozzarella-pizza-cheese-pepperoni-sicilian-dish-removebg-preview.png"
						class="img-fluid img-thumnail">
					<input type="checkbox" class="col-12" name="pizza1" value="MARGHERITA"> 
					<label class="col-12 text-center">
						<h3>MARGHERITA</h3>
						<p>Mozzarella, olive, oregano <strong>10€</strong></p>
					</label> 
					<input type="hidden" name="price1" value="10">
				</div>
				<div class="col-4 row">
					<img src="https://www.lamiapizza.fr/produit/1889_197.png"
						class="img-fluid img-thumnail"> 
					<input type="checkbox" class="col-12" name="pizza2" value="SALMON"> 
					<label class="col-12 text-center">
						<h3>SALMON</h3>
						<p>Mozzarella, olive, oregano, salmon <strong>12€</strong></p>
					</label> 
					<input type="hidden" name="price2" value="12">
				</div>
				<div class="col-4 row">
					<img
						src="https://www.pizzapalace-longueville.fr/produit/1626_80.png"
						class="img-fluid img-thumnail"> <input type="checkbox"
						class="col-12" name="pizza3" value="NAPOLITAINE"> <label
						class="col-12 text-center">
						<h3>NAPOLITAINE</h3>
						<p>Mozzarella, olive, oregano, anchovy, capers <strong>12€</strong></p>
					</label> <input type="hidden" name="price3" value="12">
				</div>
				<div class="col-4 row">
					<img
						src="https://www.commerces-de-france.fr/wp-content/uploads/2020/11/Pizza-4-fromages-Andiamo-Pizza-Les-Ulis.png"
						class="img-fluid img-thumnail"> <input type="checkbox"
						class="col-12" name="pizza4" value="FORMAGGI"> <label
						class="col-12 text-center">
						<h3>FORMAGGI</h3>
						<p>Mozzarella, Gorgonzola, Emmental, Tallegio, Fontina <strong>12€</strong></p>
					</label> <input type="hidden" name="price4" value="12">
				</div>
				<div class="col-4 row">
					<img src="https://www.casadelice.com/produit/693_211.png"
						class="img-fluid img-thumnail"> <input type="checkbox"
						class="col-12" name="pizza5" value="BOLOGNAISE"> <label
						class="col-12 text-center">
						<h3>BOLOGNAISE</h3>
						<p>Mozzarella, olive, oregano, minced meat <strong>13€</strong></p>
					</label> <input type="hidden" name="price5" value="13">
				</div>
				<div class="col-4 row">
					<img
						src="https://www.pizzapalace-canybarville.fr/produit/1628_79.png"
						class="img-fluid img-thumnail"> <input type="checkbox"
						class="col-12" name="pizza6" value="TONO"> <label
						class="col-12 text-center">
						<h3>TONO</h3>
						<p>Mozzarella, olive, rosemary-capes-basil, tuna <strong>14€</strong></p>
					</label> <input type="hidden" name="price6" value="14">
				</div>
				<div class="col-4 row"></div>
				<div class="col-4 row">
					<img
						src="https://i.ibb.co/jJn6w4q/pizza-de-fruits-mer-99595928-removebg-preview.png"
						" class="img-fluid img-thumnail"> <input type="checkbox"
						class="col-12" name="pizza7" value="FRUTTI DE MARE"> <label
						class="col-12 text-center">
						<h3>FRUTTI DE MARE</h3>
						<p>Mozzarella, sea ​​food, parsley <strong>14€</strong></p>
					</label> <input type="hidden" name="price7" value="14">
				</div>
				<div class="col-4 row"></div>
			</div>
		</div>
		<div class="d-flex justify-content-between my-4 mx-5">
			<input type="submit" class="p-2 btn btn-primary"
				value="Add to list">
			<button class="p-2 btn btn-primary">
				<a href="View.jsp" class="text-decoration-none text-reset">View Order</a>
			</button>
		</div>
	</form>
</body>
</html>