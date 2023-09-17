<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Success</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div id="wrapper">
		<div class="container text-center mt-3">
			<i class="fas fa-check-circle fa-5x text-success"></i>
			<h1>Thank You</h1>
			<h2>Your Order is Successfully Placed</h2>
			<h3>With in 7 Days Your Product will be Delivered In Your Addresss</h3>
			<a href="index.jsp" class="btn btn-primary mt-3">Home</a>
			<a href="order.jsp" class="btn btn-danger mt-3">View Order</a>
		</div>
	
	
		<div style="margin-top: 120px">
			<%@include file="all_component/footer.jsp"%>
		</div>
	
	</div>
</body>
</html>