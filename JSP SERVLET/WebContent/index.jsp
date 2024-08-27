<%@ page import="Entity.Admin"%>
<%@ page import="DAO.AdminDAO"%>
<%@ page import="Entity.Student"%>
<%@ page import="java.util.List"%>
<%@ page import="DAO.StudentDAO"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="Connections.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<%
	// Session management code
	String username = (String) session.getAttribute("username");
	if (username == null) {
		out.println("<script>alert('Your session has expired. Please log in again.');</script>");
		response.sendRedirect("adminlogin.jsp");
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard - Manage Students and Courses</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f0f8ff;
	display: flex;
	flex-direction: column;
	min-height: 100vh; /* Ensure the body takes full height */
}

.container {
	margin-top: 20px;
	flex: 1; /* Allow the container to grow */
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

.action-buttons {
	display: flex;
	gap: 0.5rem; /* Space between buttons */
}

.action-buttons a {
	width: 70px; /* Set a fixed width for all buttons */
	text-align: center; /* Center the text inside the buttons */
}

footer {
	background-color: #007bff;
	color: white;
	text-align: center;
	padding: 10px 0;
	position: relative; /* Allows for placement at bottom */
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>

	<div class="container">
		<h2>
			<i class="fas fa-users"></i> Manage Students
		</h2>

		<div class="card mb-3">
			<div class="card-body">
				<p class="text-center fs-1">Students Details</p>

				<c:if test="${not empty successMSG }">
					<p class="text-center text-success">${successMSG }</p>
					<c:remove var="successMSG" />
				</c:if>

				<c:if test="${not empty errorMSG }">
					<p class="text-center text-danger">${errorMSG }</p>
					<c:remove var="errorMSG" />
				</c:if>

				<table class="table">
					<thead>
						<tr>
							<th scope="col">Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Address</th>
							<th scope="col">Qualification</th>
							<th scope="col">Email</th>
							<th scope="col">Course</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
							Admin admin = new Admin();
							StudentDAO dao = new StudentDAO(DbConnection.getCon());
							List<Student> list = dao.getAllStudents();
							for (Student s : list) {
						%>
						<tr>
							<th scope="row"><%=s.getName()%></th>
							<td><%=s.getDob()%></td>
							<td><%=s.getAddress()%></td>
							<td><%=s.getQualification()%></td>
							<td><%=s.getEmial()%></td>
							<td><%=new StudentDAO(DbConnection.getCon()).getCourseById(s.getCourseId())%></td>
							<td>
								<div class="action-buttons">
									<a href="updatestudent.jsp?id=<%=s.getId()%>"
										class="btn btn-sm btn-primary">Edit</a> <a
										href="delete?id=<%=s.getId()%>" class="btn btn-sm btn-danger">Delete</a>
								</div>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>

		<div class="card mb-3">
			<div class="card-body">
				<p class="text-center fs-1">Courses</p>

				<c:if test="${not empty successMSG }">
					<p class="text-center text-success">${successMSG }</p>
					<c:remove var="successMSG" />
				</c:if>

				<c:if test="${not empty errorMSG }">
					<p class="text-center text-danger">${errorMSG }</p>
					<c:remove var="errorMSG" />
				</c:if>

				<table class="table">
					<thead>
						<tr>
							<th scope="col">Course ID</th>
							<th scope="col">Course Name</th>
							<th scope="col">Course Duration</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
							AdminDAO d = new AdminDAO(DbConnection.getCon());
							List<Admin> listt = d.getAllCourses();
							for (Admin a : listt) {
						%>
						<tr>
							<th scope="row"><%=a.getCourseId()%></th>
							<td><%=a.getCoursename()%></td>
							<td><%=a.getCourseduration()%></td>
							<td>
								<div class="action-buttons">
									<a href="updatecourse.jsp?id=<%=a.getCourseId()%>"
										class="btn btn-sm btn-primary">Edit</a> <a
										href="deletecourse?id=<%=a.getCourseId()%>"
										class="btn btn-sm btn-danger">Delete</a>
								</div>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#addCourseModal">
					<i class="fas fa-plus"></i> Add Course
				</button>
			</div>
		</div>

		<!-- Add Course Modal -->
		<div class="modal fade" id="addCourseModal" tabindex="-1"
			role="dialog" aria-labelledby="addCourseModalLabel"
			aria-hidden="true">
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
								<label for="courseduration"><i
									class="fas fa-calendar-alt"></i> Course Duration</label> <input
									type="text" class="form-control" id="courseduration"
									name="courseduration" placeholder="Enter Course Duration"
									required>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Add
									Course</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

	<footer>
	<p>&copy; 2024 Your Company. All rights reserved.</p>
	</footer>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
