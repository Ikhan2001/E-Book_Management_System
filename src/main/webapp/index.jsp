<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-book</title>
<%@include file="all_component/allCss.jsp"%>
<link rel="stylesheet" href="all_component/style.css">
<style type="text/css">
.back-img {
	background: url("img/book.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.book-card {
	width: 150px;
	height: 200px;
}

.crd-ho:hover {
	background-color: rgb(217, 217, 217);
	transform: scale(1.05);
	filter: drop-shodow(30px 10px 4px #333);
	transition: all 0.3s ease-in;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div id="wrapper">



		<div class="container-fluid back-img">
			<h2 class="text-center text-white">
				<i class="fa-solid fa-book"></i> E-Book Management System
			</h2>
		</div>
	
<!--Start New Book -->
<hr>
		<div class="container">
			<h3 class="text-center mb-5 mt-3">New Book</h3>
			<div class="row">
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/b1.jpg"
								class="img-thumblin">
							<p>Java a Complete Practical</p>
							<p>Swati Saxena</p>
							<p>Category: New
							<p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-shopping"></i> Add Cart</a> <a
									href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1">299</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/b2.jpg"
								class="img-thumblin">
							<p>Atomic Habits</p>
							<p>James Clear</p>
							<p>Category: New
							<p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1">499</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/b3.jpg"
								class="img-thumblin">
							<p>It Starts with Us</p>
							<p>Atria Books</p>
							<p>Category: New
							<p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1">799</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/b4.jpg"
								class="img-thumblin">
							<p>Love and Other Words</p>
							<p>Christina Lauren</p>
							<p>Category: New
							<p>
							<div class="row">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-danger btn-sm ml-1">399</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="text-center mt-4">
				<a href="" class="btn btn-danger btn-sm">View All</a>
			</div>
		</div>
		<!--End New Book -->
<hr>
<!--Start Old Book -->
		<div class="container">
			<h3 class="text-center mb-5 mt-3">Old Book</h3>
			<div class="row">
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/b1.jpg"
								class="img-thumblin">
							<p>Java a Complete Practical</p>
							<p>Swati Saxena</p>
							<p>Category: New
							<p>
							<div class="row">
								<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1">299</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/b2.jpg"
								class="img-thumblin">
							<p>Atomic Habits</p>
							<p>James Clear</p>
							<p>Category: New
							<p>
							<div class="row">
								<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1">499</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/b3.jpg"
								class="img-thumblin">
							<p>It Starts with Us</p>
							<p>Atria Books</p>
							<p>Category: New
							<p>
							<div class="row">
								<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1">799</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/b4.jpg"
								class="img-thumblin">
							<p>Love and Other Words</p>
							<p>Christina Lauren</p>
							<p>Category: New
							<p>
							<div class="row">
								<a href="" class="btn btn-success btn-sm ml-5">View Details</a>
								<a href="" class="btn btn-danger btn-sm ml-1">399</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="text-center mt-4 mb-0">
				<a href="" class="btn btn-danger btn-sm">View All</a>
			</div>
		</div>
		<hr>
<!--End Old Book -->
<%@include file="all_component/footer.jsp" %>
	</div>
</body>
</html>