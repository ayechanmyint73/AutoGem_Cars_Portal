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
<title>AutoGem | Register Page</title>

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
    </style>
</head>
<body>

	<div class="container register">
        <div class="row" >
            <div class="col-sm-6 register_img">
                <img src="../car-images/welcome_cats.svg " alt="" class="mx-auto d-block" width="100%" height="80%">
            </div>
            <div class="col-sm-6 register_info">
                <h4 class="text-center">Create an account</h4>
                
                <form:form action="save" method="post" modelAttribute="user">
                
                    <div class="form-group">
                        <label for="name">Full name</label>
                        <form:input path="name" class="form-control" placeholder="Enter name" id="name" required="true"/>
                     </div>
                     
                    <div class="form-group">
                      <label for="email">Email address</label>
                      <form:input path="email" type="email" class="form-control" placeholder="Enter email" id="email" required="true" />
                    </div>
                    
                    <div class="form-group">
                        <label for="username">Username</label>
                        <form:input path="userName" class="form-control" placeholder="Enter username" id="username" required="true" />
                     </div>
                     
                    <div class="form-group">
                      <label for="pwd">Password</label>
                      <form:input path="password" type="password" class="form-control" placeholder="Enter password" id="pwd" required="true" />
                    </div>
                    
                    <div class="form-group">
                        <label for="inputState">State</label>
                        <form:select path="location" id="inputState" class="form-control" required="true">
                            <form:option value="Singapore">Singapore</form:option>
                            <form:option value="Malaysia">Malaysia</form:option>
                            <form:option value="Myanmar">Myanmar</form:option>
                            <form:option value="India">India</form:option>
                            <form:option value="Japan">Japan</form:option>
                            <form:option value="Thailand">Thailand</form:option>
                            <form:option value="Others">Others...</form:option>
                        </form:select>
                      </div>
                      
                    <div class="form-group">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required="true">
                          <label class="form-check-label" for="invalidCheck2" required>
                            I agree to the processing of <a href="">personal data</a>
                          </label>
                        </div>
                      </div>
                      
                    <button type="submit" class="btn registerbtn mx-auto d-block" style="border: 1px solid none;
            border-radius: 5px;
            background-color: var(--main-color);
            width: 80%;
            margin: 25px 0px;
            color: white;">Register</button>
                    <p class="text-center">Already have an account? <a href="/login">Login here</a></p>
                </form:form>
            </div>
        </div>
    </div>

</body>
    <%@ include file="footer.jsp" %>
</html>