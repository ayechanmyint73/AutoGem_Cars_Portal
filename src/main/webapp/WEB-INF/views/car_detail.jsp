<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AutoGem | Car Detail Page</title>

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
        
        .car-title{
        	text-align: center;
        	margin: 30px;
        }
        
        .car-title::after{
            content: "";
            display: block;
            margin-top: 5px;
            margin-left: 45%;
            width: 150px;
            height: 4px;
            align-items: center;
            background-color: var(--main-color);
        }
    </style>
</head>
<body>

	<div class="container-fluid">
	
		<h3 class="car-title">Car Detail Information</h3>
		
		<div class="row">
			<div class="col-sm-8">
			<div class="card">
			  <img src="/car-images/${car.carphoto}" class="card-img-top img-fluid" alt="car image">
			  <div class="card-body">
			    <h5 class="card-title">${car.registeration} - ${car.model} </h5>
					<p class="card-text">Car Make  : ${car.make}</p>
					<p class="card-text">Car Model : ${car.model}</p>
					<p class="card-text">Car Registration Year : ${car.registeration}</p>
					<p class="card-text">Sell Price : $ ${car.price}</p>
			  </div>
			</div>
		</div>
		
		<div class="col-sm-4">
			<div class="card text-white" style="background-color: var(--main-color)">
			  <div class="card-header"><i class="fa fa-user-circle" style="color: var(--main-color); margin-bottom: 10px;"></i></div>
			  <div class="card-body">
			    <h5 class="card-title text-center">Car Bidding Price</h5>
			    <p class="card-text">
			    
			    	<form action="car_detail?id=${car.id}" method="post" class="form-group">
						<input type="hidden" name="id" value="${car.id}" /> 
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
						<input type="number" placeholder="Enter Bid Price" name="bitprice" class="form-control"/>
						
						<div class="form-group" style="padding: 20px;">
							<input type="submit" value="Bit Car" class="btn btn-success" style="margin-right: 50px;">
							<a href="cars" class="btn btn-danger">Go Back</a>
						</div>
					</form>
	
			    </p>
			  </div>
			</div>
			
			<h4 style="text-align: center; margin-top: 30px;"> Current Bidding Price!</h4><br/>
			<c:forEach var="car_bidding" items="${bidinfo}">
				
				<div class="card mb-3 card bg-white" style="padding:10px;">
				
					<div class="row" >
						<div class="col-md-6 text-center">
							<i class="fa fa-user-circle" style="font-size: 100px; color: var(--main-color); margin-bottom: 10px;"></i>
							<p>Name - ${car_bidding.bidderName}</p>
						</div>
						<div class="col-md-6">
							<div class="card-body">
								<p class="card-head"><small class="text-muted">${car_bidding.bid_date_time}</small></p>
								<p class="card-text">Bidded Price: $ ${car_bidding.bidderPrice}</p>
						
							</div>
						</div>
					</div>
				</div>
				
				<hr/>
			</c:forEach>
		</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>