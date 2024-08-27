<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AutoGem | footer</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap');

        * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Lora", serif;
        text-decoration: none;
        list-style-type: none;
        scroll-behavior: smooth;
        }

        body{
            background-color: rgb(240, 237, 234);
        }

        :root{
            --main-color: rgb(255, 102, 0);
            --text-color: rgb(19, 19, 45);
            --promotion-color: rgb(230, 173, 136);
        }

        .navbar-brand{
            display: flex;
            align-items: center;
            color: var(--main-color);
            font-weight: bold;
            font-size: larger;
        }

        .navbar-brand img{
            width: 45px;
            height: 45px;
            align-items: center;
            margin-right: 10px;
        }

        .title{
            color: var(--text-color);
            font-weight: bold;
        }

        footer{
            background-color: white;
            padding-top: 10px;
            margin-top: 25px;
        }

        .icons{
            padding: 10px;
        }
    </style>
</head>
<body>

	<!-- Footer -->
    <footer class="text-center text-lg-start bg-body-tertiary text-muted">
        <!-- Section: Links  -->
        <section class="">
        <div class="container mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
            <!-- Grid column -->
            <div class="col-sm-3">
                <!-- Content -->
                <h6 class="fw-bold mb-4 navbar-brand">
                	<img src="../car-images/logo.png" alt="" >AutoGem
                </h6>
                <p>
                2024 AutoGem. All rights reserved
                </p>
                <div>
                <a href="" class="icons">
              		<img src="../car-images/youtube.svg" alt="" width="20px" height="20px">
	            </a>
	            <a href="" class="icons">
	              <img src="../car-images/instagram.svg" alt="" width="20px" height="20px">
	            </a>
	            <a href="" class="icons">
	              <img src="../car-images/facebook.svg" alt="" width="20px" height="20px">
	            </a>
	            <a href="" class="icons">
	              <img src="../car-images/twitter.svg" alt="" width="20px" height="20px">
	            </a>
	            <a href="" class="icons">
	              <img src="../car-images/linkedin.svg" alt="" width="20px" height="20px">
	            </a>
                </div>
            </div>
            <!-- Grid column -->
    
            <!-- Grid column -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold mb-4 title">
                Services
                </h6>
                <p>
                <a href="#!" class="text-reset">Sell</a>
                </p>
                <p>
                <a href="#!" class="text-reset">Buy</a>
                </p>
                <p>
                <a href="#!" class="text-reset">Used Cars for sale</a>
                </p>
            </div>
            <!-- Grid column -->
    
            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold mb-4 title">Contact</h6>
                <p>
                <i class="fas fa-envelope me-3"></i>
                autoGem@gmail.com
                </p>
                <p><i class="fas fa-phone me-3"></i> + 95 842 742 180</p>
                <p><i class="fas fa-home me-3"></i> Mon to Sun | 9am to 6pm</p>
            </div>
            <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
        </section>
        <!-- Section: Links  -->
    
        <!-- Copyright -->
        <div class="d-flex justify-content-lg-between p-4 border-bottom" style="background-color: rgba(0, 0, 0, 0.05);">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
            <span>We accept online card payment as well as wire transfers.</span>
        </div>
        <!-- Left -->
        <!-- Right -->
        <div>
            <a href="" class="icons">
            <i class="fa-brands fa-cc-paypal" style="font-size: 25px;"></i>
            </a>
            <a href="" class="icons">
            <i class="fa-brands fa-cc-visa" style="font-size: 25px;"></i>
            </a>
            <a href="" class="icons">
            <i class="fa-solid fa-credit-card" style="font-size: 25px;"></i>
            </a>
        </div>
        <!-- Right -->
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->

</body>
</html>