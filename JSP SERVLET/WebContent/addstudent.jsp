<%@page import="Entity.Admin"%>
<%@page import="java.util.List"%>
<%@page import="Connections.DbConnection"%>
<%@page import="DAO.AdminDAO"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f8ff;
        }

        .container {
            margin-top: 50px;
            text-align: center;
        }

        h2 {
            color: #007bff;
            margin-bottom: 30px;
            font-size: 28px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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

        .form-group i {
            margin-right: 8px;
        }

        input[type="text"], input[type="date"], select {
            border-radius: 5px;
        }

        input[type="text"]:focus, input[type="date"]:focus, select:focus {
            border-color: #007bff;
            outline: none;
        }
    </style>
</head>
<body>

    <%@include file="navbar.jsp"%>

    <div class="container p-3">
        <h2><i class="fas fa-user-plus"></i> Add Student</h2>

        <c:if test="${not empty successMSG }">
            <p class="text-center text-success">${successMSG }</p>
            <c:remove var="successMSG" />
        </c:if>

        <c:if test="${not empty errorMSG }">
            <p class="text-center text-danger">${errorMSG }</p>
            <c:remove var="errorMSG" />
        </c:if>

        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-body">
                        <form action="register" method="post">
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Enter Student Name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">DOB</label>
                                <input type="date" name="dob" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address</label>
                                <input type="text" name="address" class="form-control" placeholder="Enter Address" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Qualification</label>
                                <input type="text" name="qualification" class="form-control" placeholder="Enter Qualification" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Course</label>
                                <select name="courseId" class="form-control" required>
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
                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="text" name="email" class="form-control" placeholder="Enter Email" required>
                            </div>
                            <button type="submit" class="btn btn-primary col-md-12">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="footer.jsp"%>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
