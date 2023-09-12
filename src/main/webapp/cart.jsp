<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Page</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div id="wrapper">
		<div class="container-fluid">
			<div class="row p-5">
				<div class="col-md-6">
					<div class="card bg-white">
						<div class="card-body">
							<h3 class="text-center text-primary">Your Selected Item</h3>
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">First</th>
										<th scope="col">Last</th>
										<th scope="col">Handle</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="card">
						<div class="card-body">
							<h3 class="text-center text-primary">Your Details For Order</h3>
							<form>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="inputEmail4">Name</label> <input type="text"
											class="form-control" id="inputEmail4" >
									</div>
									<div class="form-group col-md-6">
										<label for="inputPassword4">Email</label> <input
											type="email" class="form-control" id="inputPassword4"
											>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="inputEmail4">Phone Number</label> <input type="number"
											class="form-control" id="inputEmail4" >
									</div>
									<div class="form-group col-md-6">
										<label for="inputPassword4">Address</label> <input
											type="text" class="form-control" id="inputPassword4"
											>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="inputEmail4">Landmark</label> <input type="text"
											class="form-control" id="inputEmail4" >
									</div>
									<div class="form-group col-md-6">
										<label for="inputPassword4">City</label> <input
											type="text" class="form-control" id="inputPassword4"
											>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="inputEmail4">State</label> <input type="text"
											class="form-control" id="inputEmail4" >
									</div>
									<div class="form-group col-md-6">
										<label for="inputPassword4">Pincode</label> <input
											type="number" class="form-control" id="inputPassword4"
											>
									</div>
								</div>
								<div class="form-group">
									<label>Payment Mode</label>
									<select class="form-control">
										<option>--Select--</option>
										<option>Cash On Delivery</option>
									</select>
								</div>
								<div class="text-center">
									<button class="btn btn-warning">Order Now</button>
									<a href="index.jsp" class="btn btn-success">Continue Shopping</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>