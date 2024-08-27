<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AutoGem | About Us Page</title>

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

        .title{
            color: var(--text-color);
            font-weight: bold;
        }

        .about-info{
            font-size: 21px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .about-info p{
            padding: 20px;
        }

        .about-logo{
            display: flex;
            flex-direction: column;
            align-items: center;
            color: var(--text-color);
            font-weight: bold;
            font-size: larger;
            margin-top: 40px;
        }

        .about-logo img{
            width: 65px;
            height: 65px;
            align-items: center;
        }
        
        .about-text{
            font-size: 17px;
            text-align: justify;
            margin-bottom: 20px;
        }

        .information{
            background-color: var(--promotion-color);
        }

    </style>
</head>
<body>

	<div class="container-fluid about-us">
        <div class="row">
            <div class="col-sm-6  about-info">
                <h2 class="title">We are an online marketplace <br> based in Myanmar</h2>
                <p>We bring you new markets, new customers and new opportunities for the purchase and sale of used cars.
                         Now you can buy and sell a used car safely and comfortablly online, with only a few easy clicks.</p>
            </div>

            <div class="col-sm-6 about-img">
                <img src="../car-images/about_cover.jpg" alt="" width="100%">
            </div>
        </div>
    </div>

    <div class="container-fluid information">
        <div class="container">
            <a class="about-logo" href="#">
                <img src="../car-images/logo.png" alt="AutoRevive logo">
                <h3 class="title">About AutoGem</h3>
            </a>

            <p class="about-text">At AutoGem, we are passionate about providing our customers with a seamless and enjoyable car buying experience.
                Our platform offers a wide selection of high-quality used cars from trusted sellers,
                ensuring that you find the perfect vehicle to suit your needs and budget. With transparent pricing,
                easy financing options, and exceptional customer service,
                we strive to make the car buying process as straightforward and stress-free as possible.
                Whether you're in the market for a reliable sedan, a spacious SUV, or a rugged pickup truck,
                our team is dedicated to helping you find your dream car.
                Discover the convenience of shopping for your next vehicle online with AutoGem and
                let us help you drive away with confidence.</p><br><br>

            <h3 class="title text-center ">Our Mission</h3>
            <p class="about-text">Our mission is to revolutionize the way people buy used cars by providing a transparent,
             hassle-free, and customer-centric platform. We aim to offer a diverse selection of high-quality vehicles, 
             coupled with easy financing options and exceptional customer service, to make the car buying process enjoyable
             and accessible to everyone. We are committed to building long-lasting relationships with our customers based on trust,
             integrity, and transparency.</p><br><br>

             <h3 class="title text-center">Our Vision</h3>
             <p class="about-text">Our vision is to become the leading online destination for buying and selling used cars,
                known for our unmatched selection, exceptional customer service, and innovative approach to the car buying experience.
                We aspire to continuously enhance our platform, leveraging technology and data-driven
                insights to streamline the car buying process and exceed customer expectations.
                By empowering consumers with the tools and resources they need to make informed decisions,
                we strive to redefine the way people think about buying used cars, making it an exciting and rewarding experience for all.</p><br><br>
        </div>
    </div>
    
        <%@ include file="footer.jsp" %>

</body>
</html>