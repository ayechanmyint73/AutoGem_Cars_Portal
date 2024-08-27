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
<title>AutoGem | Home Page</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
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

        .popularbtn{
          width: 80%;
          font-size: 17px;
          padding: 2px;
          margin-top: 5px;
          margin-bottom: 10px;
          background-color: var(--main-color);
          border: none;
        }

        .title{
          color: var(--text-color);
          font-weight: bold;
      }

        /* cover image starts */


        .card-img-overlay{
            top: 20%;
        }

        .coverbtn{
            background-color: var(--main-color);
            border: none;
            padding: 10px;
        }

        /* how does it work starts */
        .works{
            margin-top: 35px;
            margin-bottom: 60px;
        }

        .works_title{
            text-align: center;
            padding: 15px;
        }

        .works_no{
            color: var(--main-color);
            font-weight: bold;
        }

        .popular_cars{
            align-items: center;
        }

        .popular_cars_container{
            margin-top: 45px;
        }

        /* card promo starts */
        .card_promo{
            width: 100%;
            height: 150px;
            background-color: var(--main-color);
            margin-top: 15px;
            padding: 30px;
            justify-content: center;
            align-items: center;
            border-radius: 5px;
        }

        .secure_card{
            text-align: justify;
        }

        .secure_card .fa-solid{
            margin-right: 10px;
            padding: 5px;
            font-size: 25px;
            color: white;
        }

        .secure_card h5{
            color: var(--text-color);
            font-weight: bold;
        }

        .secure_card p{
            color: var(--text-color);
        }

        /* shop with us starts */
        .shops{
            margin-top: 40px;
            padding: 20px 10px;
        }

        /* promotion card starts */
        .promotion_card{
            margin: 100px 0px;
        }

        .promotionbtn{
            padding: 10px 5px;
            width: 150px;
            margin-top: 20px;
            border-radius: 5px;
            border: none;
            background-color: var(--main-color);
        }

        .promotion_info{
            background-color: var(--promotion-color);
        }



    </style>
</head>
<body>

	<!-- cover images start -->
    <div class="container-fluid cover">
      <div class="card img-fluid">
        <img class="card-img-top img-fluid" src="./car-images/Untitled picture.png" alt="Card image" style="width:100%;">
        <div class="card-img-overlay">
          <h4 class="card-title title">FIND THE BEST CAR INSURANCE <br> <span>WITH AUTOGEM</span></h4>
          <button class="coverbtn">Advanced Search</button>
        </div>
      </div>
    </div>
    <!-- cover images end -->

    <!-- how does it works starts -->
    <div class="container-fluid works"> 
      <h3 class="works_title title">How does it work?<hr></h3>
      <div class="row">
          <div class="col-sm-3">
              <img src="./car-images/search.svg" alt="" width="150px" height="150px" class="mx-auto d-block">
              <h4 class="works_no">01</h4>
              <h5>Browse cars on AutoGem</h5>
              <p>Look for cars on AutoGem with ease by using our advanced search and filter.</p>
          </div>

          <div class="col-sm-3">
              <img src="./car-images/discover.svg" alt="" width="150px" height="150px" class="mx-auto d-block">
              <h4 class="works_no">02</h4>
              <h5>Discover Your Car</h5>
              <p>Learn everything about your favourite cars by comparing them or reading about them.</p>
          </div>

          <div class="col-sm-3">
              <img src="./car-images/done.svg" alt="" width="150px" height="150px" class="mx-auto d-block">
              <h4 class="works_no">03</h4>
              <h5>Complete Registration</h5>
              <p>Fill up the registration form for further requirements.</p>
          </div>

          <div class="col-sm-3">
              <img src="./car-images/deliver.svg" alt="" width="150px" height="150px" class="mx-auto d-block">
              <h4 class="works_no">04</h4>
              <h5>We'll deliver it to your home</h5>
              <p>We arrange all the paperwork, confirmed registration and delivery. All you need to do is enjoy your new car.</p>
          </div>
      </div>
    </div>
    <!-- how does it works ends -->

  <!-- Why shop with us starts -->
  <div class="container "><hr>
    <div class="row shops">
      <div class="col-sm-4">
        <img src="./car-images/shops.jpeg" alt="" width="100%" class="img-fluid">
      </div>
      <div class="col-sm-8">
        <h3 style="font-weight: bold; padding: 10px;" class="title">Why Shop With Us?</h3>
        <ul>
          <span>At AutoGem, we understand that buying a used car can be a daunting experience.
           That's why we've built our platform with the customer in mind, offering a seamless and trustworthy shopping experience 
           from start to finish. While shopping with us, we offer:</span>
          <ol style="margin-top: 20px; line-height: 35px; font-size: 17px;">1. Quality Selection: A diverse range of high-quality used cars. <br>
            2. Transparent Pricing: Upfront pricing with no hidden fees. <br>
            3. Easy Financing Options: Tailored financing solutions for all credit types. <br>
            4. Exceptional Customer Service: Friendly support throughout the buying process. <br>
            5. Convenient Online Experience: Effortless browsing, comparing, and scheduling.</ol>
        </ul>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="card mx-auto d-block promotion_card">
      <h5 class="card-header">
        <div class="row">
          <div class="col-sm-6" style="padding: 48px;">
            <span style="font-size: 20px" class="title text-center">Your next car is waiting for <br> you here... <br></span>
            <button class="promotionbtn">Offer Now</button>
          </div>
          <div class="col-sm-6">
            <img src="./car-images/order_a_car.svg" alt="" width="100%" height="200px">
          </div>
        </div>
      </h5>

      <div class="card-body">
        <p class="card-text">
          <div class="row" style="margin-left: 30px;">
            <div class="col-sm-6">
              <div>
                <span>
                  <h6><i class="fa-solid fa-phone" style="font-size: 20px; padding: 10px;"></i>Call Us <br>
                  + 95 842 742 180 <br>
                  Mon-Sun | 9am to 6pm</h6>
                </span>
              </div>
            </div>
            <div class="col-sm-6">
              <div>
                <span>
                  <h6><i class="fa-solid fa-envelope" style="font-size: 20px; padding: 10px;"></i>Email <br>
                  autoGem@gmail.com</h6>
                </span>
              </div>
            </div>
          </div>
        </p>
      </div>
    </div>
  </div>
  
  <%@ include file="footer.jsp" %>

</body>
</html>