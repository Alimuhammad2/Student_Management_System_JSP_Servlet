<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home - Student Management System</title>
<%@include file="allcss.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #b0c4de; /* Light gray background */
	display: flex;
	flex-direction: column;
	min-height: 100vh; /* Ensure the body covers full viewport height */
	transition: background-color 0.5s;
	/* Smooth transition for background color */
}

body.scrolled {
	background-color: #ffffff; /* Change to white when scrolled */
}

.navbar-custom {
	background-color: #007bff;
}

.navbar-custom .navbar-brand, .navbar-custom .nav-link {
	color: white;
}

.navbar-custom .nav-link:hover {
	color: #d4d4d4;
}

.container {
	margin-top: 50px;
	flex: 1; /* Allow the container to grow and take remaining space */
}

.header-content {
	text-align: center;
	margin-top: 100px;
	animation: slideIn 1s; /* Animation for the header */
}

.header-content h1 {
	font-size: 48px;
	font-weight: bold;
	margin-bottom: 20px;
	color: #FFFFFF; /* Header title color */
	animation: bounce 1s infinite alternate; /* Add bounce effect */
}

.header-content p {
	font-size: 20px;
	color: #666;
}

.info-section {
	margin-top: 50px;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	animation: fadeIn 1.3s; /* Fade-in effect */
	width: 100%; /* Full width */
	max-width: 900px; /* Limit maximum width */
	text-align: center; /* Center text */
}

/* Keyframe animations */
@
keyframes slideIn {from { transform:translateY(-30px);
	opacity: 0;
}

to {
	transform: translateY(0);
	opacity: 1;
}

}
@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
@
keyframes bounce {from { transform:translateY(0);
	
}

to {
	transform: translateY(-10px);
}

}
.feature-list {
	list-style-type: none; /* Remove bullets from list */
	padding-left: 0; /* Remove default padding */
}

.feature-list li {
	margin-bottom: 10px;
	font-size: 18px;
}

.highlight {
	color: #28a745; /* Highlight color for strong text */
	font-weight: bold;
}

.underline {
	width: 50px;
	height: 4px;
	background-color: #498d96;
	margin-bottom: 20px;
}

.card-container {
	display: flex;
	justify-content: space-between;
	width: 100%;
	max-width: 1200px;
	padding: 3rem;
	gap: 40px; /* Add space between the cards */
}

.card {
	width: 24%; /* Adjusted to fit 4 cards in one line */
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 20px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	text-align: center;
	transition: transform 0.3s ease;
}

.card img {
	max-width: 100%;
	height: auto;
	border-bottom: 2px solid #ddd;
	margin-bottom: 15px;
}

.card h3 {
	font-size: 18px;
	color: #333;
	margin-bottom: 10px;
}

.card p {
	font-size: 14px;
	color: #666;
	margin-bottom: 20px;
}

.card .learn-more {
	text-decoration: none;
	font-weight: bold;
	color: #2d878d;
}

.card:hover {
	transform: scale(1.05);
}

/* For screen sizes between 800px and 600px */
@media ( max-width : 800px) and (min-width: 600px) {
	.card-container {
		flex-direction: column;
		align-items: center;
	}
	.card {
		width: 80%;
		margin-bottom: 20px; /* Add space between vertically stacked cards */
	}
}

/* For screen sizes between 599px and 400px */
@media ( max-width : 599px) and (min-width: 400px) {
	.card-container {
		flex-direction: column;
		align-items: center;
	}
	.card {
		width: 90%;
		margin-bottom: 20px; /* Add space between vertically stacked cards */
	}
}

/* For screen sizes between 399px and 299px */
@media ( max-width : 399px) and (min-width: 299px) {
	.card-container {
		flex-direction: column;
		align-items: center;
	}
	.card {
		width: 100%;
		margin-bottom: 20px; /* Add space between vertically stacked cards */
	}
}
</style>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-custom">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Student Management
				System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
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
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header Content -->
	<div class="container header-content">
		<h1>Welcome to the Student Management System</h1>
	</div>

	<!-- Information Section -->
	<div class="container info-section">
		<h2 class="text-center">About the System</h2>
		<p>The Student Management System is designed to streamline the
			management of student records, providing a user-friendly interface
			for students and administrators alike. Here are some exciting
			features:</p>
		<ul class="feature-list">
			<li><strong>Student Registration:</strong> Easy registration
				process for new students.</li>
			<li><strong>Student Login:</strong> Secure login for students to
				access their records.</li>
			<li><strong>Admin Panel:</strong> Admins can manage student
				records, including adding, updating, and deleting information.</li>
			<li><strong>User-Friendly Interface:</strong> Designed with the
				user in mind, making navigation simple and intuitive.</li>
			<li><strong>Data Security:</strong> Robust measures to ensure
				the privacy and security of student data.</li>
		</ul>

		<h2 class="heading">Our Best Services</h2>
		<div class="underline"></div>
		<div class="card-container">
			<div class="card">
				<img
					src="https://images.pexels.com/photos/1654760/pexels-photo-1654760.jpeg"
					alt="Admission System">
				<h3>Admission System</h3>
				<p>Edusuite admission system brings you an easy and secure
					solution for account management. This software system provides
					various functions.</p>
				<a href="#" class="learn-more">Learn More</a>
			</div>
			<div class="card">
				<img
					src="https://images.pexels.com/photos/1654760/pexels-photo-1654760.jpeg"
					alt="Examination System">
				<h3>Examination System</h3>
				<p>Examination System helps you evaluate the student's
					capability and track the performance of every student about the
					exam system.</p>
				<a href="#" class="learn-more">Learn More</a>
			</div>
			<div class="card">
				<img
					src="https://images.pexels.com/photos/1654760/pexels-photo-1654760.jpeg"
					alt="Transportation System">
				<h3>Transportation System</h3>
				<p>Edusuite can help you to register and keep the records of
					school vehicles, to enhance the security and can take care of fee
					adjustment.</p>
				<a href="#" class="learn-more">Learn More</a>
			</div>
			<div class="card">
				<img
					src="https://images.pexels.com/photos/1654760/pexels-photo-1654760.jpeg"
					alt="Administration System">
				<h3>Administration System</h3>
				<p>You can easily monitor all the departments, restrict users to
					one module, track all the information, send notifications,
					email/text the alerts to parents, etc.</p>
				<a href="#" class="learn-more">Learn More</a>
			</div>
		</div>
		<p>We hope you find this system helpful in managing student
			information effectively. Join us in making education management
			seamless!</p>
		<p>The system also includes reporting features that allow
			administrators to generate insightful reports on student performance,
			attendance, and other key metrics. This helps in identifying trends
			and areas for improvement, ultimately enhancing the educational
			experience.</p>
		<p>Additionally, our system is built with scalability in mind,
			ensuring it can grow with your institution's needs. Whether you're
			managing a small class or a large university, the Student Management
			System is designed to accommodate various academic environments.</p>
		<p>We continuously strive to improve the system based on user
			feedback, and we are committed to providing timely updates and
			support to ensure a smooth experience for all users.</p>
	</div>

	<%@include file="footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
	<script>
		// Change background color on scroll
		window.onscroll = function() {
			if (document.body.scrollTop > 50
					|| document.documentElement.scrollTop > 50) {
				document.body.classList.add('scrolled');
			} else {
				document.body.classList.remove('scrolled');
			}
		};
	</script>
</body>
</html>
