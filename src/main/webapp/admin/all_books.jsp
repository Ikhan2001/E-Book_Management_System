<%@page import="com.admin.servlet.BooksDeleteServlet"%>
<%@page import="com.user.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<h3 class="text-center">Hello Admin</h3>
	<%
	Object obj = request.getAttribute("Msg");
	if (obj != null) {
		response.sendRedirect("admin/all_books.jsp");
		out.print(obj);
	}
	%>

	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Image</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Category</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>

			</tr>
		</thead>
		<tbody>

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
			List<BookDtls> list = dao.getAllBooks();
			for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookId()%></td>
				<td><img src="../books/<%=b.getPhotoName()%>"
					style="width: 50px; height: 50px"></td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td>
					<a href="edit_books.jsp?id=<%=b.getBookId()%>" class="btn btn-sm btn-primary">Edit</a> 
					<a href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger">Delete</a>
					
				</td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>
	<div style="margin-top: 253px">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>