<%@page import="com.user.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : all books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div id="wrapper">
		<div class="contaier p-3">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-body">
							<h4 class="text-center">Edit Books</h4>
							

							<%
							int id = Integer.parseInt(request.getParameter("id"));
							BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
							BookDtls b = dao.getBookById(id);
							%>


							<form name="editbook" action="../editbooks" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="id" value="<%=b.getBookId()%>">
								<div class="form-group">
									<label for="exampleInputEmail1">Book Name*</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="bname"
										value="<%=b.getBookName()%>">
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Author Name*</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="author"
										value="<%=b.getAuthor()%>">
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Price*</label> <input
										type="number" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="price"
										value="<%=b.getPrice()%>">
								</div>
								<div class="form-group">
									<label for="inputState">Book Status</label> <select
										class="form-control" id="inputState" name="bstatus">

										<%
										if ("Active".equals(b.getStatus())) {
										%>
										<option value="Active">Active</option>
										<option value="Inactive">Inactive</option>
										<%
										} else {
										%>
										<option value="Active">Active</option>
										<option value="Inactive">Inactive</option>
										<%
										}
										%>

									</select>
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>