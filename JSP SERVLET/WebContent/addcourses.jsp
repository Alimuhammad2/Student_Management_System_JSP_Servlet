<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard - Manage Courses</title>
<%@include file="allcss.jsp"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f0f8ff;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	text-align: center;
}

h2 {
	color: #007bff;
	margin-bottom: 30px;
	font-size: 28px;
}

.btn-primary {
	background-color: #28a745;
	border-color: #28a745;
	font-size: 16px;
	padding: 10px 20px;
	border-radius: 5px;
}

.btn-primary:hover {
	background-color: #218838;
	border-color: #218838;
}

.modal-header, .modal-footer {
	background-color: #f7f7f7;
}

.modal-title {
	color: #333;
}

.form-group i {
	margin-right: 8px;
}

input[type="text"] {
	border-radius: 5px;
}

input[type="text"]:focus {
	border-color: #007bff;
	outline: none;
}

.modal-footer .btn {
	font-size: 16px;
	padding: 10px 20px;
	border-radius: 5px;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<!-- Admin Dashboard - Manage Courses -->
		<h2>
			<i class="fas fa-book"></i> Manage Courses
		</h2>

		<!-- Add Course Button -->
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#addCourseModal">
			<i class="fas fa-plus"></i> Add Course
		</button>
	</div>

	<!-- Add Course Modal -->
	<div class="modal fade" id="addCourseModal" tabindex="-1" role="dialog"
		aria-labelledby="addCourseModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="addCourseModalLabel">
						<i class="fas fa-plus"></i> Add New Course
					</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="courseservlet" method="post">
						<div class="form-group">
							<label for="coursename"><i class="fas fa-book-open"></i>
								Course Name</label> <input type="text" class="form-control"
								id="coursename" name="coursename"
								placeholder="Enter Course Name" required>
						</div>
						<div class="form-group">
							<label for="courseduration"><i class="fas fa-clock"></i>
								Course Duration</label> <input type="text" class="form-control"
								id="courseduration" name="courseduration"
								placeholder="Enter Course Duration" required>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary">Add Course</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
