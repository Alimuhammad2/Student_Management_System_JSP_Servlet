<%@page import="Entity.Admin"%>
<%@page import="java.util.List"%>
<%@page import="DAO.AdminDAO"%>
<%@page import="Entity.Student"%>

<%@page import="Connections.DbConnection"%>
<%@page import="DAO.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Student</p>

						<%
							int id = Integer.parseInt(request.getParameter("id"));
							StudentDAO dao = new StudentDAO(DbConnection.getCon());
							Student s = dao.getStudentById(id);
						%>

						<form action="update" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input type="text"
									value="<%=s.getName()%>" name="name" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									value="<%=s.getDob()%>" name="dob" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input type="text"
									value="<%=s.getAddress()%>" name="address"
									class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" value="<%=s.getQualification()%>"
									name="qualification" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									value="<%=s.getEmial()%>" name="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Course</label> <select name="courseId"
									class="form-control" required>
									<option value="">Select Course</option>
									<%
										AdminDAO d = new AdminDAO(DbConnection.getCon());
										List<Admin> listt = d.getAllCourses();
										for (Admin a : listt) {
									%>
									<option value="<%=a.getCourseId()%>"><%=a.getCoursename()%></option>
									<%
										}
									%>
								</select>
							</div>
							<input type="hidden" name="id" value="<%=s.getId()%>">

							<button type="submit" class="btn btn-primary com-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>