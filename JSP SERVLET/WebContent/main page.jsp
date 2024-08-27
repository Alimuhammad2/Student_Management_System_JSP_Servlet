<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Student Management System</title>
    <%@include file="allcss.jsp"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/fontawesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f6f8; /* Light gray background */
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            transition: background-color 0.5s; /* Smooth transition for background color */
        }

   /* navbar  /* --------nav bar or header */
    .banner {
      width: 100%;
      height: 80vh;
    background-image: url(images/pexels-kaiariel-35636971.jpg);
      
   
    z-index: -1; /* Send the image behind the content */

      background-size: cover;
      background-position: center;
      position: relative;
    }

    .navbar {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 20px 0;
    width: 85%;
    margin: auto;
}

.logo {
    width: 120px;
    cursor: pointer;
}

.navbar h2 {
    color: white;
    margin-left: -20px;
    font-size: 25px;
    font-weight: 500; /* Adjusted to 500 to match standard weight */
}

.navbar ul {
    list-style-type: none;
    display: flex;
    margin: 0;
    padding: 0;
}

.navbar ul li {
    margin: 0 20px;
    list-style: none;
    display: inline-block;
    position: relative;
}

.navbar ul li a {
    text-decoration: none;
    color: white;
    padding: 5px 10px;
    text-transform: uppercase;
    font-size: 17px;
    font-weight: 500; /* Adjusted font weight */
    transition: color 0.3s ease, font-weight 0.3s ease;
}

/* Underline effect */
.navbar ul li::after {
    content: '';
    height: 3px;
    width: 0;
    background: #ddd5d5; /* Underline color */
    position: absolute;
    left: 0;
    bottom: -10px;
    transition: width 0.5s;
}

/* Hover effect */
.navbar ul li:hover::after {
    width: 100%;
}

.navbar ul li:hover a {
    color: #ddd5d5; /* Text color on hover */
    font-weight: 600; /* Slightly bolder text on hover */
}

/* Keyframes for the pop-up effect */
@keyframes pop-up {
    0% {
        opacity: 0;
        transform: translateY(40px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Apply animation to the heading */
.content1 h1 {
    animation: pop-up 0.6s ease-out; /* Animation with a duration of 0.6 seconds */
}

/* Apply animation to the paragraph */
.content1 p {
    animation: pop-up 0.8s ease-out; /* Animation with a duration of 0.8 seconds */
}

    .content1{
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
      color: white;
      width: 100%;
    }

    .content1 h1 {
      font-size: 50px;
      margin-top: 80px;
    }

    .content1 p {
      font-size: 20px;
      margin: 0px 20% 0px 20%;
      text-align: center;

      font-weight: 60;
      line-height: 25px;
    }

    .btn {
      display: inline-block;
      background-color: #06050f;
      color: white;
      padding: 10px 40px;
      text-decoration: none;
      border-radius: 10px;
      transition: background-color 0.3s;
      margin-top: 20px;
    }

    .btn:hover {
      background-color: #da12da;
    }

    .sidebar ul li {
      display: none;
    }

    .close-btn {
      display: none;
    }

    .menu-btn {
      display: none;
    }

    @media (max-width: 1000px) {
      .logo {
        display: flex;
      }

      .navbar {
        width: 90%;
      }

      .content h1 {
        font-size: 40px;
      }

      .content p {
        font-size: 18px;
        line-height: 22px;
      }

      .btn {
        padding: 10px 30px;
      }

      .menu-btn {
        display: none;
      }
    }

    @media (max-width: 900px) {
      .navbar {
        flex-direction: column;
        align-items: center;
      }

      .navbar ul {
        flex-direction: column;
        align-items: center;
      }

      .navbar ul li {
        margin: 10px 0;
      }

      .content h1 {
        font-size: 35px;
      }

      .content p {
        font-size: 16px;
        line-height: 20px;
      }
      .menu-btn {
        display: none;
      }
      .btn {
        padding: 10px 20px;
      }
    }

    @media (max-width: 899px) and (min-width: 677px) {
      .logo {
        margin-left: -70%;
      }

      .navbar ul {
        display: none;
      }

      .menu-btn {
        display: block;
        font-size: 30px;
        color: white;
        cursor: pointer;
        position: absolute;
        top: 35px;
        right: 35px;
        z-index: 1001;
      }

      .sidebar {
        position: fixed;
        top: 0;
        right: -50%;
        /* Initially hidden on the right */
        width: 50%;
        height: 100%;
        background-color: rgba(14, 15, 15, 0.9);
        color: white;
        transition: right 0.3s;
        /* Transition for right property */
        z-index: 1000;
      }

      .sidebar ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 100%;
        justify-content: center;
      }

      .sidebar ul li {
        margin: 20px 0;
        display: flex;
      }

      .sidebar ul li a {
        text-decoration: none;
        color: white;
        text-transform: uppercase;
        font-size: 18px;
      }

      .close-btn {
        position: absolute;
        top: 20px;
        right: 20px;
        font-size: 30px;
        color: white;
        cursor: pointer;
      }
    }

    .show-sidebar {
      right: 0 !important;
      /* Move sidebar into view */
    }

    @media (max-width: 677px) and (min-width: 511px) {
      .logo {
        margin-left: -70%;
      }

      .navbar ul {
        display: none;
      }

      .menu-btn {
        display: block;
        font-size: 30px;
        color: white;
        cursor: pointer;
        position: absolute;
        top: 35px;
        right: 35px;
        z-index: 1001;
      }

      .sidebar {
        position: fixed;
        top: 0;
        right: -50%;
        /* Initially hidden on the right */
        width: 50%;
        height: 100%;
        background-color: rgba(14, 15, 15, 0.9);
        color: white;
        transition: right 0.3s;
        /* Transition for right property */
        z-index: 1000;
      }

      .sidebar ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 100%;
        justify-content: center;
      }

      .sidebar ul li {
        margin: 20px 0;
        display: flex;
      }

      .sidebar ul li a {
        text-decoration: none;
        color: white;
        text-transform: uppercase;
        font-size: 18px;
      }

      .close-btn {
        position: absolute;
        top: 20px;
        right: 20px;
        font-size: 30px;
        color: white;
        cursor: pointer;
      }

      .content h1 {
        font-size: 35px;
        margin-top: 60px;
      }

      .content p {
        font-size: 18px;

        text-align: center;
        margin: 0px 9% 0px 9%;
        font-weight: 60;
        line-height: 25px;
      }

      .btn {
        display: inline-block;
        background-color: #006696;
        color: white;
        padding: 10px 40px;
        text-decoration: none;
        border-radius: 10px;
        transition: background-color 0.3s;
        margin-top: 20px;
      }
    }

    @media (max-width: 511px) and (min-width: 290px) {
      .logo {
        margin-left: -70%;
      }

      .navbar ul {
        display: none;
      }

      .menu-btn {
        display: block;
        font-size: 30px;
        color: white;
        cursor: pointer;
        position: absolute;
        top: 35px;
        right: 35px;
        z-index: 1001;
      }

      .sidebar {
        position: fixed;
        top: 0;
        right: -50%;
        /* Initially hidden on the right */
        width: 50%;
        height: 100%;
        background-color: rgba(14, 15, 15, 0.9);
        color: white;
        transition: right 0.3s;
        /* Transition for right property */
        z-index: 1000;
      }

      .sidebar ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        height: 100%;
        justify-content: center;
      }

      .sidebar ul li {
        margin: 20px 0;
        display: flex;
      }

      .sidebar ul li a {
        text-decoration: none;
        color: white;
        text-transform: uppercase;
        font-size: 18px;
      }

      .close-btn {
        position: absolute;
        top: 20px;
        right: 20px;
        font-size: 30px;
        color: white;
        cursor: pointer;
      }

      .content h1 {
        font-size: 30px;
        text-align: center;
        margin-top: 60px;
        padding: 10px 10px;
      }

      .content p {
        font-size: 16px;
        margin: 0px 9% 0px 9%;
        text-align: center;

        font-weight: 60;
        line-height: 25px;
      }

      .btn {
        display: inline-block;
        background-color: #006696;
        color: white;
        padding: 10px 40px;
        text-decoration: none;
        border-radius: 10px;
        transition: background-color 0.3s;
        margin-top: 20px;
      }
    }

    .show-sidebar {
      right: 0 !important;
      /* Move sidebar into view */
    }
 */

        .header-title {
            font-size: 48px;
            font-weight: bold;
            background: linear-gradient(45deg, #1a1818, rgb(15, 84, 173), rgb(25, 29, 230));
            background-size: 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: colorChange 3s infinite;
        }

        @keyframes colorChange {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

       /* ----------- */
       /*  information */
       .responsive-cell-block {
  min-height: 75px;
}

* {
  font-family: Nunito, sans-serif;
}

a {
  text-decoration-line: none;
  text-decoration-thickness: initial;
  text-decoration-style: initial;
  text-decoration-color: initial;
  color: inherit;
}

.text-blk {
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 0px;
  margin-left: 0px;
  padding-top: 0px;
  padding-right: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  line-height: 25px;
}

.responsive-container-block {
  min-height: 75px;
  height: fit-content;
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  margin-top: 0px;
  margin-right: auto;
  margin-bottom: 0px;
  margin-left: auto;
  justify-content: flex-start;
  padding-top: 0px;
  padding-right: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
}

.responsive-container-block.container {
  max-width: 1320px;
  flex-direction: column;
  text-align: center;
  align-items: center;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 0px;
  margin-left: 0px;
}

.responsive-container-block.big-container {
  justify-content: center;
  padding-top: 0px;
  padding-right: 50px;
  padding-bottom: 0px;
  padding-left: 50px;
  overflow-x: hidden;
  overflow-y: hidden;
}

.text-blk.section-text {
  color: rgb(139, 10, 10);
  max-width: 750px;
  margin-top: 25px;
  margin-right: 0px;
  margin-bottom: 0px;
  margin-left: 0px;
  font-size: 18px;
  line-height: 27px;
}

.text-blk.section-head {
  max-width: 750px;
  font-size: 45px;
  line-height: 50px;
  font-weight: 700;
  margin-top: 0px;
  margin-right: 0px;
  margin-bottom: 10px;
  margin-left: 0px;
}

.responsive-cell-block.wk-ipadp-6.wk-tab-12.wk-mobile-12.wk-desk-6.content-one {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.responsive-cell-block.wk-tab-12.wk-mobile-12.wk-desk-6.wk-ipadp-12.img-one {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.responsive-cell-block.wk-tab-12.wk-mobile-12.wk-desk-6.wk-ipadp-12.content-one {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
/* Style for the image block */
.img-one img {
    filter: grayscale(100%) contrast(100%) brightness(0%); /* Make the image black */
    height: 90vh; /* Adjust the height as needed */
    object-fit: cover; /* Ensure the image covers the area without distortion */
}
/* Remove bullet points from the list */
.feature-list {
    list-style-type: none; /* Removes the dots */
    padding: 0; /* Removes default padding */
    margin: 0; /* Removes default margin */
}

/* Style for highlighted text */
.highlight-text {
    font-weight: bold; /* Make the text bold */
    
    padding: 2px 4px; /* Add padding around the text */
    border-radius: 4px; /* Optional: rounded corners for the background */
    color: #333; /* Dark text color for contrast */
    font-size: 21px; /* Increase font size */
}
.info-container {
    position: relative;
    font-size: 20px;
    padding: -10px -10px; /* Padding around the entire content */
    /* Rounded corners for the container */
 /
   
}

/* Keyframes for the pop-up effect */
@keyframes pop-up {
    0% {
        opacity: 0;
        transform: translateY(20px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Initially hidden state */
.info-container {
    opacity: 0;
    transform: translateY(20px);
    transition: opacity 0.8s ease-out, transform 0.8s ease-out;
}

/* Add the class to trigger the animation */
.visible {
    opacity: 1;
    transform: translateY(0);
}


@media (max-width: 1024px) {
  .responsive-container-block {
    flex-direction: column-reverse;
  }

  .responsive-cell-block.wk-tab-12.wk-mobile-12.wk-desk-6.wk-ipadp-12.content-one {
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  .responsive-cell-block.wk-tab-12.wk-mobile-12.wk-desk-6.wk-ipadp-12.img-one {
    display: flex;
    max-height: 300px;
    height: 100%;
    justify-content: center;
    align-items: center;
  }

  .bg-image {
    transform: rotateX(0deg) rotateY(0deg) rotateZ(-90deg) scaleX(1) scaleY(1) scaleZ(1);
    width: 100%;
  }

  .responsive-container-block.container {
    margin-top: 50px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin-left: 0px;
  }
}

@media (max-width: 768px) {
  .text-blk.section-text {
    font-size: 18px;
  }

  .text-blk.section-head {
    font-size: 40px;
    line-height: 45px;
  }
}

@media (max-width: 500px) {
  .text-blk.section-head {
    font-size: 30px;
    line-height: 35px;
  }

  .responsive-container-block.big-container {
    padding-top: 0px;
    padding-right: 30px;
    padding-bottom: 0px;
    padding-left: 30px;
  }

  .text-blk.section-text {
    font-size: 16px;
    line-height: 24px;
  }

  .responsive-cell-block.wk-tab-12.wk-mobile-12.wk-desk-6.wk-ipadp-12.img-one {
    max-height: 250px;
  }

  .responsive-container-block.container {
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin-left: 0px;
  }

  .responsive-container-block.big-container {
    padding-top: 0px;
    padding-right: 20px;
    padding-bottom: 0px;
    padding-left: 20px;
  }

  .responsive-container-block.container {
    margin-top: 40px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin-left: 0px;
  }
}
@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700;800&amp;display=swap');

*,
*:before,
*:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  margin: 0;
}

.wk-desk-1 {
  width: 8.333333%;
}

.wk-desk-2 {
  width: 16.666667%;
}

.wk-desk-3 {
  width: 25%;
}

.wk-desk-4 {
  width: 33.333333%;
}

.wk-desk-5 {
  width: 41.666667%;
}

.wk-desk-6 {
  width: 50%;
}

.wk-desk-7 {
  width: 58.333333%;
}

.wk-desk-8 {
  width: 66.666667%;
}

.wk-desk-9 {
  width: 75%;
}

.wk-desk-10 {
  width: 83.333333%;
}

.wk-desk-11 {
  width: 91.666667%;
}

.wk-desk-12 {
  width: 100%;
}

@media (max-width: 1024px) {
  .wk-ipadp-1 {
    width: 8.333333%;
  }

  .wk-ipadp-2 {
    width: 16.666667%;
  }

  .wk-ipadp-3 {
    width: 25%;
  }

  .wk-ipadp-4 {
    width: 33.333333%;
  }

  .wk-ipadp-5 {
    width: 41.666667%;
  }

  .wk-ipadp-6 {
    width: 50%;
  }

  .wk-ipadp-7 {
    width: 58.333333%;
  }

  .wk-ipadp-8 {
    width: 66.666667%;
  }

  .wk-ipadp-9 {
    width: 75%;
  }

  .wk-ipadp-10 {
    width: 83.333333%;
  }

  .wk-ipadp-11 {
    width: 91.666667%;
  }

  .wk-ipadp-12 {
    width: 100%;
  }
}

@media (max-width: 768px) {
  .wk-tab-1 {
    width: 8.333333%;
  }

  .wk-tab-2 {
    width: 16.666667%;
  }

  .wk-tab-3 {
    width: 25%;
  }

  .wk-tab-4 {
    width: 33.333333%;
  }

  .wk-tab-5 {
    width: 41.666667%;
  }

  .wk-tab-6 {
    width: 50%;
  }

  .wk-tab-7 {
    width: 58.333333%;
  }

  .wk-tab-8 {
    width: 66.666667%;
  }

  .wk-tab-9 {
    width: 75%;
  }

  .wk-tab-10 {
    width: 83.333333%;
  }

  .wk-tab-11 {
    width: 91.666667%;
  }

  .wk-tab-12 {
    width: 100%;
  }
}

@media (max-width: 500px) {
  .wk-mobile-1 {
    width: 8.333333%;
  }

  .wk-mobile-2 {
    width: 16.666667%;
  }

  .wk-mobile-3 {
    width: 25%;
  }

  .wk-mobile-4 {
    width: 33.333333%;
  }

  .wk-mobile-5 {
    width: 41.666667%;
  }

  .wk-mobile-6 {
    width: 50%;
  }

  .wk-mobile-7 {
    width: 58.333333%;
  }

  .wk-mobile-8 {
    width: 66.666667%;
  }

  .wk-mobile-9 {
    width: 75%;
  }

  .wk-mobile-10 {
    width: 83.333333%;
  }

  .wk-mobile-11 {
    width: 91.666667%;
  }

  .wk-mobile-12 {
    width: 100%;
  }
}
           /*www.bytewebster.com*/
	/*www.bytewebster.com*/
	/*www.bytewebster.com*/
    /* our service */

p,a,h1,h2,h3,h4,h5,h6,ul,li {
	margin: 0;
	padding: 0;
}

.section-services {
	font-family: "Poppins", sans-serif;
	background-color: #f2f5f8;
	color: #202020;
	padding-top: 115px;
    padding-bottom: 120px;
}

.section-services .header-section {
	margin-bottom: 34px;
}

.section-services .header-section .title {
	position: relative;
    padding-bottom: 14px;
    margin-bottom: 25px;
	font-weight: 700;
    font-size: 32px;
}

.section-services .header-section .title:before {
	content: "";
	position: absolute;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
	width: 50px;
	height: 3px;
	background-color: #000000 ;
    border-radius: 3px;
}

.section-services .header-section .title:after {
	content: "";
	position: absolute;
	bottom: 0;
	left: 50%;
    transform: translateX(30px);
	width: 10px;
	height: 3px;
	background-color: #504f93;
    border-radius: 3px;
}

.section-services .header-section .description {
	font-size: 14px;
    color: #282828;
}

.section-services .single-service {
    position: relative;
    margin-top: 30px;
    background-color: #fff;
    border-radius: 10px;
    padding: 40px 30px;
    overflow: hidden;
    box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;
}

.section-services .single-service .content {
	position: relative;
	z-index: 20;
}

.section-services .single-service .circle-before {
    position: absolute;
    top: 0;
    right: 0px;
    transform: translate(40%, -40%);
    width: 150px;
    height: 150px;
    background-color: #000000 ;
    border: 6px solid red;
    border-radius: 50%;
    /*opacity: 0.5;*/
    /*z-index: 10;*/
    transition: all .6s;
}

.section-services .single-service:hover .circle-before {
	width: 100%;
	height: 100%;
	transform: none;
	border: 0;
	border-radius: 0;
	opacity: 1;
}

.section-services .single-service .icon {
	display: inline-block;
	margin-bottom: 26px;
    width: 70px;
    height: 70px;
    background-color: #000000 ;
    border-radius: 5px;
    line-height: 70px;
    text-align: center;
    color: #fff;
    font-size: 30px;
    transition: all .3s;
}

.section-services .single-service:hover .icon {
	background-color: #fff;
	color: #000000 ;
}

.section-services .single-service .title {
    margin-bottom: 18px;
	font-weight: 700;
    font-size: 23px;
    transition: color .3s;
}

.section-services .single-service:hover .title {
	color: #fff;
}

.section-services .single-service .description {
    margin-bottom: 20px;
    font-size: 14px;
    transition: color .3s;
}

.section-services .single-service:hover .description {
	color: #fff;
}

.section-services .single-service a {
	position: relative;
	font-size: 18px;
    color: #202020;
    text-decoration: none;
    font-weight: 500;
    transition: color .3s;
}

.section-services .single-service:hover a {
	color: #fff;
}

.section-services .single-service a:after {
	content: "";
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	height: 1px;
	background-color: #000000 ;
	transition: background-color .3s;
}

.section-services .single-service:hover a:after {
	background-color: #fff;
}
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="banner">
       <!-- Navbar -->
<div class="banner">
  <div class="navbar">
      <h2>Student Management</h2>
      <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#aboutUs">About</a></li>
          <li><a href="#service">Services</a></li>
          <li><a href="#portfolio">Projects</a></li>
          <li><a href="#style">Contact</a></li>
      </ul>
  </div>
</div>

        <div class="content1" id="home">
          <h1>Welcome to the Student Management System</h1>
          <p>The Student Management System is designed to streamline the management of student records, providing a user-friendly interface for students and administrators alike. Here are some exciting features:</p>
          
         
        </div>
        <div class="menu-btn">&#9776;</div>
        <div class="sidebar">
          <div class="close-btn">&times;</div>
          <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#aboutUs">About</a></li>
            <li><a href="#service">Services</a></li>
            <li><a href="#portfolio">Projects</a></li>
            <li><a href="#style">Contact</a></li>
          </ul>
        </div>
      </div>
      <!-- navbar -->
       <!-- infrmation -->
      <div class="responsive-container-block big-container">
        <div class="responsive-container-block container">
          <div class="responsive-container-block">
            <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-6 wk-ipadp-12 img-one">
              <img alt="golden-lines.png" class="image-block bg-image" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/golden%20lines.png">
            </div>
            <div class="responsive-cell-block wk-tab-12 wk-mobile-12 wk-desk-6 wk-ipadp-12 content-one">
              <p class="text-blk section-head">
               About Us
              </p>
              <p class="text-blk section-text">
                <div class="content-container info-container">
                  <ul class="feature-list">
                      <li class="feature-item"><span class="highlight-text">Student Registration:</span> Easy registration process for new students.</li>
                      <li class="feature-item"><span class="highlight-text">Student Login:</span> Secure login for students to access their records.</li>
                      <li class="feature-item"><span class="highlight-text">Admin Panel:</span> Admins can manage student records, including adding, updating, and deleting information.</li>
                      <li class="feature-item"><span class="highlight-text">User-Friendly Interface:</span> Designed with the user in mind, making navigation simple and intuitive.</li>
                      <li class="feature-item"><span class="highlight-text">Data Security:</span> Robust measures to ensure the privacy and security of student data.</li>
                  </ul>
                  <p>We hope you find this system helpful in managing student information effectively. Join us in making education management seamless!</p>
                </div>
               
             
            </div>
          </div>
        </div>
      </div>
    

 

    <!-- Service Cards Section -->
    <section class="section-services">
		<div class="container">
			<div class="row justify-content-center text-center">
				<div class="col-md-10 col-lg-8">
					<div class="header-section">
						<h2 class="title">Our Services</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fas fa-laptop-code"></i>
							</span>
							<h3 class="title">Web Development</h3>
							<p class="description">Mauris volutpat urna tristique finibus iaculis. Morbi facilisis, justo eu vulputate elementum, est augue tincidunt ante, sed efficitur leo ligula vel velit.</p>
							<a href="#" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fab fa-battle-net"></i>
							</span>
							<h3 class="title">Digital Marketing</h3>
							<p class="description">Mauris volutpat urna tristique finibus iaculis. Morbi facilisis, justo eu vulputate elementum, est augue tincidunt ante, sed efficitur leo ligula vel velit.</p>
							<a href="#" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fab fa-artstation"></i>
							</span>
							<h3 class="title">Software Development</h3>
							<p class="description">Mauris volutpat urna tristique finibus iaculis. Morbi facilisis, justo eu vulputate elementum, est augue tincidunt ante, sed efficitur leo ligula vel velit.</p>
							<a href="#" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fab fa-500px"></i>
							</span>
							<h3 class="title">Brand Strategy</h3>
							<p class="description">Mauris volutpat urna tristique finibus iaculis. Morbi facilisis, justo eu vulputate elementum, est augue tincidunt ante, sed efficitur leo ligula vel velit.</p>
							<a href="#" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fas fa-chart-pie"></i>
							</span>
							<h3 class="title">Business Consulting</h3>
							<p class="description">Mauris volutpat urna tristique finibus iaculis. Morbi facilisis, justo eu vulputate elementum, est augue tincidunt ante, sed efficitur leo ligula vel velit.</p>
							<a href="#" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fab fa-asymmetrik"></i>
							</span>
							<h3 class="title">SEARCH ENGINE OPTIMIZATION</h3>
							<p class="description">Mauris volutpat urna tristique finibus iaculis. Morbi facilisis, justo eu vulputate elementum, est augue tincidunt ante.</p>
							<a href="#" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
			</div>
		</div>
	</section>

    <!-- Include JS and footer -->
    <%@include file="footer.jsp"%>
    <script>
        // navbar
        const menuBtn = document.querySelector('.menu-btn');
        const closeBtn = document.querySelector('.close-btn');
        const sidebar = document.querySelector('.sidebar');
    
        menuBtn.addEventListener('click', () => {
          sidebar.classList.add('show-sidebar');
          menuBtn.style.display = 'none';
          closeBtn.style.display = 'block';
        });
    
        closeBtn.addEventListener('click', () => {
          sidebar.classList.remove('show-sidebar');
          menuBtn.style.display = 'block';
          closeBtn.style.display = 'none';
        });
    // navbar

    // Function to check if an element is in the viewport
function isInViewport(element) {
    const rect = element.getBoundingClientRect();
    return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
    );
}

// Function to handle scroll events
function handleScroll() {
    const elements = document.querySelectorAll('.info-container');
    elements.forEach(element => {
        if (isInViewport(element)) {
            element.classList.add('visible');
        }
    });
}

// Event listener for scroll
window.addEventListener('scroll', handleScroll);

// Initial check in case the element is already in the viewport
document.addEventListener('DOMContentLoaded', handleScroll);

      </script>
    

</body>
</html>
