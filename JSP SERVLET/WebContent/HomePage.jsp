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
	min-height: 100vh;
	transition: background-color 0.5s;
	/* Smooth transition for background color */
}

/* .navbar-custom {
            background-color: #cbced1;
        }

        .navbar-custom .navbar-brand, .navbar-custom .nav-link {
            color: rgb(12, 12, 12);
            font-size: 20px;
        }

        .navbar-custom .nav-link:hover {
            color: #65a7d3;
        } */
.content-container {
	max-width: 1200px; /* Constrain the content width */
	margin: 50px auto; /* Center the content */
}

.header-section {
	text-align: center;
	margin: 50px 0;
}

.header-title {
	font-size: 48px;
	font-weight: bold;
	background: linear-gradient(45deg, #1a1818, rgb(15, 84, 173),
		rgb(25, 29, 230));
	background-size: 300%;
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	animation: colorChange 3s infinite;
}

@
keyframes colorChange { 0% {
	background-position: 0% 50%;
}

50%
{
background-position


:

 

100%
50%;
}
100%
{
background-position


:

 

0%
50%;
}
}
.info-container {
	padding: 20px;
	background-color: #ffffff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	animation: fadeIn 1.3s; /* Fade-in effect */
	margin-bottom: 50px; /* Add space below the info section */
}

.feature-list {
	list-style-type: none; /* Remove bullets from list */
	padding-left: 0; /* Remove default padding */
}

.feature-item {
	margin-bottom: 10px;
	font-size: 18px;
}

.highlight-text {
	color: #28a745; /* Highlight color for strong text */
	font-weight: bold;
}

.service-card-container {
	display: flex;
	justify-content: center; /* Center cards horizontally */
	gap: 20px; /* Add space between the cards */
	flex-wrap: wrap; /* Allow wrapping of cards in smaller screens */
}

.service-card {
	flex: 1; /* Allow the card to take equal space */
	max-width: 250px; /* Set max width to limit card size */
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 20px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	text-align: center;
	transition: transform 0.3s ease;
	margin-bottom: 30px; /* Add space below each card */
}

.service-card img {
	max-width: 100%;
	height: auto;
	border-bottom: 2px solid #ddd;
	margin-bottom: 15px;
}

.service-card-title {
	font-size: 18px;
	color: #333;
	margin-bottom: 10px;
}

.service-card-description {
	font-size: 14px;
	color: #666;
	margin-bottom: 20px;
}

.learn-more-link {
	text-decoration: none;
	font-weight: bold;
	color: #2d878d;
}

.service-card:hover {
	transform: scale(1.05);
}

/* Responsive Design */
@media ( max-width : 800px) {
	.service-card-container {
		flex-direction: column;
		align-items: center; /* Center cards vertically in small screens */
	}
	.service-card {
		width: 90%; /* Full width for small screens */
		max-width: 300px;
	}
}
</style>
</head>
<body>

	<%@include file="navbar.jsp"%>
	<!-- Header Content -->
	<div class="content-container header-section">
		<h1 class="header-title">Welcome to the Student Management System</h1>
	</div>

	<!-- Information Section -->
	<div class="content-container info-container">
		<h2>About the System</h2>
		<p>The Student Management System is designed to streamline the
			management of student records, providing a user-friendly interface
			for students and administrators alike. Here are some exciting
			features:</p>
		<ul class="feature-list">
			<li class="feature-item"><span class="highlight-text">Student
					Registration:</span> Easy registration process for new students.</li>
			<li class="feature-item"><span class="highlight-text">Student
					Login:</span> Secure login for students to access their records.</li>
			<li class="feature-item"><span class="highlight-text">Admin
					Panel:</span> Admins can manage student records, including adding,
				updating, and deleting information.</li>
			<li class="feature-item"><span class="highlight-text">User-Friendly
					Interface:</span> Designed with the user in mind, making navigation simple
				and intuitive.</li>
			<li class="feature-item"><span class="highlight-text">Data
					Security:</span> Robust measures to ensure the privacy and security of
				student data.</li>
		</ul>
		<p>We hope you find this system helpful in managing student
			information effectively. Join us in making education management
			seamless!</p>
	</div>

	<!-- Service Cards Section -->
	<div class="content-container">
		<h2 class="heading-section">Our Services</h2>
		<div class="service-card-container">
			<div class="service-card">
				<img src="images/service1.jpg" alt="Service 1">
				<h3 class="service-card-title">Student Portal</h3>
				<p class="service-card-description">Access to personal records,
					grades, and communication with instructors.</p>
				<a href="#" class="learn-more-link">Learn More</a>
			</div>
			<div class="service-card">
				<img src="images/service2.jpg" alt="Service 2">
				<h3 class="service-card-title">Online Registration</h3>
				<p class="service-card-description">Easily register for courses
					and manage your academic schedule online.</p>
				<a href="#" class="learn-more-link">Learn More</a>
			</div>
			<div class="service-card">
				<img src="images/service3.jpg" alt="Service 3">
				<h3 class="service-card-title">Attendance Tracking</h3>
				<p class="service-card-description">Monitor your attendance and
					stay informed about class schedules.</p>
				<a href="#" class="learn-more-link">Learn More</a>
			</div>
			<div class="service-card">
				<img src="images/service4.jpg" alt="Service 4">
				<h3 class="service-card-title">Reporting & Analytics</h3>
				<p class="service-card-description">Generate detailed reports on
					academic performance and attendance.</p>
				<a href="#" class="learn-more-link">Learn More</a>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>

</body>
</html>
