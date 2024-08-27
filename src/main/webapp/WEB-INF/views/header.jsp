<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AutoGem | header</title>

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

        

        :root{
            --main-color: rgb(255, 102, 0);
            --text-color: rgb(19, 19, 45);
            --promotion-color: rgb(230, 173, 136);
        }
        .navbar{
            background-color: white;
        }

        .navbar-toggler{
            background-color: var(--main-color);
        }

        .navbar-toggler-icon{
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='black' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 8h24M4 16h24M4 24h24'/%3E%3C/svg%3E");
        }

        .navbar-brand{
            font-weight: bold;
            font-size: larger;
            margin-right: 30px;
            color: var(--main-color);
        }

        .navbar-brand img{
            width: 45px;
            height: 45px;
            align-items: center;
            margin-right: 10px;
        }

        .navbar-nav{
            column-gap: 45px;
        }

        .navbar-nav li a{
            color: var(--text-color);
        }

        .navbar-nav a:hover{
            color: var(--main-color);
        }

        .dropdown{
            margin-right: 160px;
            border: none;
        }

        .dropdown .dropdown-toggle{
            color: black;
        }

        .dropdown .dropdown-toggle:hover{
            color: var(--main-color);
        }

        .fa-user-circle{
            margin-right: 10px;
        }

        .dropdown-menu{
            margin-top: 10px;
        }

        .dropdown-item{
            padding: 10px;
        }

        .dropdown-menu .loginbtn{
            margin: 15px 10px;
            padding: 10px;
            background-color: var(--main-color);
            color: white;
            width: 260px;
            border: none;
            border-radius: 5px;
        }

        .dropdown-item-text{
            font-size: 15px;
        }

        .fa-user, .fa-car{
            margin: 10px 15px;
        }
/* navbar ends */
    </style>
</head>
<body>

    <!-- navbar starts -->
    <nav class="navbar navbar-expand-lg sticky-top">
    <a class="navbar-brand" href="#">
        <img src="./car-images/logo.png" alt="AutoRevive logo">AutoGem
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

	
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    	<sec:authorize access="!isAuthenticated()">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="cars">Used Cars</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="new_car">For Sale</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="aboutUs">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contactUs">Contact Us</a>
            </li>
        </ul>

        <form class="d-flex">
        		<a href="register"><button class="btn" type="button" style="border: 1px solid none;
            border-radius: 5px;
            background-color: var(--main-color);
            margin-right: 30px;
            color: white;">Register</button></a>
            
        		<a href="login"><button class="btn" type="button" style="border: 1px solid none;
            border-radius: 5px;
            background-color: var(--main-color);
            color: white;">Login</button></a>
      	</form>
        </sec:authorize>
        
        <sec:authorize access="isAuthenticated()">
        <ul class="navbar-nav mr-auto">
        	<sec:authorize access="hasRole('Users')">
            <li class="nav-item active">
                <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="cars">Used Cars</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="new_car">For Sale</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="aboutUs">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contactUs">Contact Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="editUser">Profile</a>
            </li>
            </sec:authorize>
            
            <sec:authorize access="hasRole('Administrators')">
            <li class="nav-item">
                <a class="nav-link" href="/all_users">Manage Users</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="cars">Manager Cars</a>
            </li>
            </sec:authorize>
        </ul>

        <form class="d-flex" action="logout" method="post" style="padding:7px;">
	      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" name="Logout" value="Logout" class="btn" style="border: 1px solid none;
            border-radius: 5px;
            background-color: var(--main-color);
            color: white;"></input>
	      </form>
        </sec:authorize>
    </div>
</nav>
    
    <!-- navbar ends -->
    

</body>
</html>