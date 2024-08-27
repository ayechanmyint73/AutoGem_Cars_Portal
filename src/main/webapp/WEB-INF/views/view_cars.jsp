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
<title>AutoGem | View Cars Page</title>

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
		
		<h3 class="car-title">Car Listings</h3>
		<div class="row">
			<div class="col-sm-4">
			
				<c:url var="get_search_url" value="search" />
				
					<!-- using action for searching cars -->
					<form action="${get_search_url}" id="myform" method="get"
						class="form-inline text-right" style="margin-left: 100px;">

					<!-- keyword input -->
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" value="" name="keyword" /> 
							
						<input type="submit" value="Search" class="btn" style="background-color: var(--main-color); color: white; border: 1px solid none; margin-right: 30px;"/>
					</form>
					
					<!-- authorization starts -->
				<sec:authorize access="hasRole('Users')">
					<a href="new_car">
						<button class="btn" style="border-color: var(--main-color); background-color: white; border: 1px solid none; margin-top: 30px; margin-left: 100px;">Post A Car</button>
					</a>
				</sec:authorize>
			</div>
			
			

					<div class="col-sm-8">
					
					<!-- error message starts -->
					<c:if test="${not empty error_message}">
						<p>${error_message}</p>
					</c:if>
		
					<c:if test="${empty cars}">
						<sec:authorize access="hasRole('Administrators')">
							<div class="alert alert-danger"> No Cars are added yet. </div>
						</sec:authorize>
						<sec:authorize access="hasRole('Users')">
							<div class="alert alert-danger"> Please click on Add button to add New Cars. </div>
						</sec:authorize>
					</c:if>
					
					<c:if test="${not empty cars}">
					
						<% int i = 1; %>
						<c:forEach var="car" items="${cars}">
				
						<div class="card mb-3">
						  <div class="row no-gutters">
						    <div class="col-md-6">
						      <img src="/car-images/${car.carphoto}" class="card-img" alt="car images">
						    </div>
						    <div class="col-md-6">
						      <div class="card-body">
						        <h5 class="card-title">${car.registeration} - ${car.model} </h5>
						        <p class="card-text">Car Make  : ${car.make}</p>
						        <p class="card-text">Car Model : ${car.model}</p>
						        <p class="card-text">Car Registration Year : ${car.registeration}</p>
						        <p class="card-text">Sell Price : $ ${car.price}</p>
						        <p class="card-text">
						        	<small class="text-muted"> 
										<sec:authorize access="hasRole('Administrators')">
											<a href="edit?id=${car.id}">
												<button class="btn" style="background-color: green; color: white; border: 1px solid none; margin-right: 30px;">Update</button>
											</a>
											<a href="delete?id=${car.id}">
												<button class="btn btn-danger" style="margin-right: 30px;">Delete</button>
											</a>
											
										</sec:authorize> 
											<a href="car_detail?id=${car.id}">
												<button class="btn" style="background-color: var(--main-color); color: white; border: 1px solid none; margin-right: 30px;">View</button></a> 
									</small>
						        </p>
		
						      </div>
						    </div>
						  </div>
						</div>
						
						<% i++; %>
						
						</c:forEach>
						
						</c:if>
					</div>

		</div>
	</div>


	<%@ include file="footer.jsp" %>
</body>

</html>