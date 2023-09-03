<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Add Books</title>
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
							<h4 class="text-center">Add Books</h4>
							<form action="" method="post">

								<div class="form-group">
									<label for="exampleInputEmail1">Book Name*</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="bname">
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Author Name*</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="author">
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Price*</label> <input
										type="number" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="bname">
								</div>

								<div class="form-group">
									<label for="inputState">Book Categories</label> <select
										class="form-control" id="inputState" name="btype">
										<option selected>Select</option>
										<option value="New">New Book</option>
									</select>
								</div>

								<div class="form-group">
									<label for="inputState">Book Status</label> <select
										class="form-control" id="inputState" name="bstatus">
										<option selected>Select</option>
										<option value="Active">Active</option>
										<option value="Inactive">Inactive</option>
									</select>
								</div>
								<div class="form-group">
									<label for="exampleFormControlFile1">Upload Photo</label>
									<input type="file" class="form-control-file" name="bimg"
										id="exampleFormControlFile1">
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
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