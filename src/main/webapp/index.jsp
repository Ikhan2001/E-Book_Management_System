<%@page import="com.user.entity.User"%>
<%@page import="com.user.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
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
	background: url("img/book2.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.book-card {
	width: 150px;
	height: 220px;
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

	<%
	User u = (User) session.getAttribute("userobj");
	%>

	<div id="wrapper">

		<div class="container-fluid back-img ">
			<h1 class="text-center text-dark font-italic">
				<i class="fa-solid fa-book mt-4"></i> E-Book Management System
			</h1>
		</div>


		<!--Start Recent Book -->
		<hr>
		<div class="container-fluid">
			<h3 class="text-center mb-5 mt-3">Recent Book</h3>
			<div class="row">
				<%
				BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConnection());
				List<BookDtls> list2 = dao2.getRecentBook();
				for (BookDtls b : list2) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/<%=b.getPhotoName()%>"
								class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>

								<%
								if (b.getBookCategory().equals("Old")) {
								%>
								Category:
								<%=b.getBookCategory()%>
							<div class="row">
								<a href="view_book.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
									class="btn btn-danger btn-sm ml-4"> <i
									class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
							</div>
							<%
							} else {
							%>
							Category:
							<%=b.getBookCategory()%>
							<div class="row">

								<%
								if (u == null) {
								%>
								<a href="login.jsp" class="btn btn-danger btn-sm ml-5"><i
									class="fa-solid fa-cart-shopping"></i> Add Cart</a>
								<%
								} else {
								%>
								<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
									class="btn btn-danger btn-sm ml-5"><i
									class="fa-solid fa-cart-shopping"></i> Add Cart</a>
								<%
								}
								%>
								<a href="view_book.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-2">View Details</a> <a href=""
									class="btn btn-danger btn-sm ml-2"><i
									class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%> </a>
							</div>
							<%
							}
							%>
							</p>

						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>

			<div class="text-center mt-4">
				<a href="all_recent_book.jsp" class="btn btn-danger btn-sm">View
					All</a>
			</div>
		</div>
		<!--Recent Book -->
		<hr>

		<!--Start New Book -->
		<hr>
		<div class="container-fluid">
			<h3 class="text-center mb-5 mt-3">New Book</h3>
			<div class="row">
				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
				List<BookDtls> list = dao.getNewBook();
				for (BookDtls b : list) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/<%=b.getPhotoName()%>"
								class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>
								Category:
								<%=b.getBookCategory()%></p>
							<div class="row">

								<%
								if (u == null) {
								%>
								<a href="login.jsp" class="btn btn-danger btn-sm ml-5"><i
									class="fa-solid fa-cart-shopping"></i> Add Cart</a>
								<%
								} else {
								%>
								<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
									class="btn btn-danger btn-sm ml-5"><i
									class="fa-solid fa-cart-shopping"></i> Add Cart</a>
								<%
								}
								%>
								<a href="view_book.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-2">View Details</a> <a href=""
									class="btn btn-danger btn-sm ml-2"><i
									class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%> </a>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>



			</div>
			<div class="text-center mt-4">
				<a href="all_new_book.jsp" class="btn btn-danger btn-sm">View
					All</a>
			</div>
		</div>
		<!--End New Book -->
		<hr>
		<!--Start Old Book -->
		<div class="container-fluid">
			<h3 class="text-center mb-5 mt-3">Old Book</h3>
			<div class="row">

				<%
				BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConnection());
				List<BookDtls> list3 = dao3.getOldBook();
				for (BookDtls b : list3) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" class="book-card" src="books/<%=b.getPhotoName()%>"
								class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>
								Category:
								<%=b.getBookCategory()%></p>
							<div class="row">
								<a href="view_book.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
									class="btn btn-danger btn-sm ml-4"><i
									class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%> </a>
							</div>

						</div>

					</div>
				</div>
				<%
				}
				%>
			</div>
			<div class="text-center mt-4 mb-0">
				<a href="all_old_book.jsp" class="btn btn-danger btn-sm">View
					All</a>
			</div>
			<hr>
			<!--End Old Book -->
		</div>
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>