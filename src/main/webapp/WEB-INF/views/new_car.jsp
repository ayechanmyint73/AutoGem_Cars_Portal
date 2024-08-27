<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
    
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AutoGem | New Car Page</title>

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
        
        .register{
        	margin: 60px;
            border: 1px solid;
        }

        .form-group input{
            background-color: transparent;
        }

        .register_img{
        padding: 30px;
            background-color: var(--main-color);
        }

        .register_info{
        padding: 30px;
            background-color: white;
        }

        .registerbtn{
            border: 1px solid none;
            border-radius: 5px;
            background-color: var(--main-color);
            width: 80%;
            margin: 25px 0px;
            color: white;
        }

        .registerbtn:hover{
            opacity: 0.95;
            color: white;
            font-weight: bold;
        }
        
        .newbtn{
        	border: 1px solid none;
            border-radius: 5px;
            background-color: green;
            padding: 5px 10px;
            color: white;
            margin-left: 50px;
        }
        
        .cancelbtn{
        	border: 1px solid none;
            border-radius: 5px;
            background-color: red;
            padding: 5px 10px;
            color: white;
            margin-left: 50px;
        }
    </style>
</head>
<body>

	<div class="container register">
        <div class="row" >
            <div class="col-sm-6 register_img">
                <img src="../car-images/login_img.png " alt="" class="mx-auto d-block" width="100%" height="80%">
            </div>
            <div class="col-sm-6 register_info">
                <h4 class="text-center">Sell Your Car here</h4>
                
                <form:form method="POST" action="/cars" modelAttribute="car" enctype="multipart/form-data">
                <input type="hidden" value="${_csrf.token}" />
					<form:hidden path="id" />

					<c:if test="${car.id>0}">
						<div class="form-group">
							<img src="/car_images/${car.carphoto}" width="300px">
							<form:hidden path="carphoto" />
						</div>
					</c:if>
					

					<div class="form-group">
						<label for="carphoto">Upload Car Photo:</label><br> 
						<input type="file" name="file" />
					</div>
                     
                    <div class="form-group">
                        <label for="name">Car make</label>
                        <form:input path="make" class="form-control" placeholder="Enter car make" id="name" required="true"/>
                     </div>
                     
                    <div class="form-group">
                      <label for="model">Car model</label>
                      <form:input path="model" type="text" class="form-control" placeholder="Enter car model" id="model" required="true" />
                    </div>
                    
                    <div class="form-group">
                        <label for="registration">Car registration year</label>
                        <form:input path="registeration" class="form-control" placeholder="Enter registeration year" id="registration" required="true" />
                     </div>
                     
                    <div class="form-group">
                      <label for="price">Car price</label>
                      <form:input path="price" type="text" class="form-control" placeholder="Enter car price" id="price" required="true" />
                    </div> 
   
                    <input type="submit" class="btn" name="Add" value="Save" style="background-color: green; color: white; border: 1px solid none; margin-right: 30px;"/>
					<input type="button" class="btn" value="Cancel" onclick="cancel()" style="background-color: red; color: white; border: 1px solid none; margin-right: 30px;"/>

					<script>
						function cancel() {
							window.location.href = "cars"
						}
					</script>
                </form:form>
            </div>
        </div>
    </div>

<%@ include file="footer.jsp" %>
</body>
</html>