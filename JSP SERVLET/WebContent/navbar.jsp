<style>
<!--
.navbar-custom {
	background-color: #cbced1;
}

.navbar-custom .navbar-brand, .navbar-custom .nav-link {
	color: rgb(12, 12, 12);
	font-size: 20px;
}

.navbar-custom .nav-link:hover {
	color: #65a7d3;
}
-->
</style>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-custom">
	<div class="container-fluid">
		<a class="navbar-brand">Student Management System</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link"
					href="studentlogin.jsp">Student Login</a></li>
				<li class="nav-item"><a class="nav-link" href="addstudent.jsp">Register
						Student</a></li>
				<li class="nav-item"><a class="nav-link" href="adminlogin.jsp">Admin
						Login</a></li>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
			</ul>
		</div>
	</div>
</nav>