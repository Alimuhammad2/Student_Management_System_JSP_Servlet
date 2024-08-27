<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <%@include file="allcss.jsp"%>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            background-color: #f0f8ff;
        }
        .container {
    display: flex;
    margin-right: 35rem;
    justify-content: center; /* Center content horizontally within the container */
    align-items: center; /* Center content vertically within the container */
    padding: 20px;
    min-height: 50vh; /* Set a minimum height if needed */
}

.card {
    width: 300%;
    max-width: 600px;
    margin-left: -5px;
    padding: 15px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    height: auto;
    opacity: 0;
    transform: scale(0.8);
    animation: popUp 0.5s ease-out forwards, blinkBorder 1s infinite; /* Adjust animation timing as needed */
    border: 5px solid transparent; /* Initial border to apply the animation */
}

@keyframes popUp {
    to {
        opacity: 1;
        transform: scale(1);
    }
}

@keyframes blinkBorder {
    0% {
        border-color: rgba(255, 0, 0, 0.5); /* Light red color */
        box-shadow: 0 0 10px rgba(255, 0, 0, 0.5); /* Initial shadow */
    }
    50% {
        border-color: rgb(128, 7, 117); /* Bright red color */
        box-shadow: 0 0 20px rgba(255, 0, 0, 1); /* More intense shadow */
    }
    100% {
        border-color: rgba(192, 29, 170, 0.5); /* Light red color */
        box-shadow: 0 0 10px rgba(180, 10, 152, 0.5); /* Initial shadow */
    }
}

@keyframes popUp {
    to {
        opacity: 1; /* Fade in the card */
        transform: scale(1); /* Scale the card to its original size */
    }
}

        .card-body {
            padding: 20px;
        }

        .fs-3 {
            font-size: 24px;
            color: #007bff;
            margin-bottom: 20px;
        }

        .form-label {
            color: #333;
        }

        .form-control {
            border-radius: 5px;
            padding: 10px;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #28a745;
            border-color: #28a745;
            font-size: 16px;
            padding: 12px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #218838;
        }

        .text-center {
            margin-bottom: 10px;
        }

        @media (max-width: 768px) {
            .card {
                width: 100%;
                padding: 15px;;
            }
        }

        @media (max-width: 576px) {
    .container {
        display: flex;
        justify-content: center; /* Center horizontally */
        align-items: center; /* Center vertically */
        padding: 20px;
        min-height: 50vh; /* Set a minimum height if needed */
        margin: 0 10px; /* Ensure the container is centered */
    }
    .card {
        width: 100%;
        padding: 15px;
    }
}

    </style>
</head>
<body>
    <%@include file="navbar.jsp"%>

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-body">
                        <p class="fs-3 text-center"><i class="fas fa-user-shield"></i> Admin Login</p>

                        <c:if test="${not empty successMSG }">
                            <p class="text-center text-success"><i class="fas fa-check-circle"></i> ${successMSG }</p>
                            <c:remove var="successMSG" />
                        </c:if>

                        <c:if test="${not empty errorMSG }">
                            <p class="text-center text-danger"><i class="fas fa-exclamation-circle"></i> ${errorMSG }</p>
                            <c:remove var="errorMSG" />
                        </c:if>

                        <form action="admin" method="post">
                            <div class="mb-3">
                                <label class="form-label"><i class="fas fa-user"></i> User Name</label>
                                <input type="text" name="username" class="form-control" placeholder="Enter your username">
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><i class="fas fa-lock"></i> Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Enter your password">
                            </div>
                            <button type="submit" class="btn btn-primary col-md-12"><i class="fas fa-sign-in-alt"></i> Login</button>
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

