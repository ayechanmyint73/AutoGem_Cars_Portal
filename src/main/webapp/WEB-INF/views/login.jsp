<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AutoGem | Login Page</title>

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

        .login{
            border: 1px solid;
            margin: 69px;
        }
        
        .form-group input{
            background-color: transparent;
        }

        .login_img{
            background-color: var(--main-color);
        }

        .login_info{
        	padding: 40px;
            background-color: white;
        }

        .loginbtn{
            border: 1px solid none;
            border-radius: 5px;
            background-color: var(--main-color);
            width: 80%;
            margin: 25px 0px;
            color: white;
        }

        .loginbtn:hover{
            opacity: 0.95;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>

	<%@ include file="header.jsp" %>

	<div class="container login">
        <div class="row login-path" >
            <div class="col-sm-6 login_img">
                <img src="../car-images/welcome_cats.svg" alt="" class="mx-auto d-block" width="100%" height="80%">
            </div>
            <div class="col-sm-6 login_info">
                <h4 class="text-center">Login to your account</h4>
                
                <c:if test="${error_string != null}">

					<div class="alert alert-danger">
						${error_string}
					</div>

				</c:if>
                
                <form action="login" method="post">
                	<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
					
						
                    <div class="form-group">
                		<label for="username">Username</label>
                		<input type="text" name="username" id="" placeholder="Enter Username" class="form-control">
            		</div>

		            <div class="form-group">
		                <label for="password">Password</label>
		                <input type="password" name="password" id="" placeholder="Enter Password" class="form-control">
		            </div>
		
		            <div class="btn_gp" >
		                <input type="submit" value="Login" name="Login" class="login btn loginbtn mx-auto d-block" style="border: 1px solid none;
            border-radius: 5px;
            background-color: var(--main-color);
            width: 80%;
            margin: 25px 0px;
            color: white;">
		            </div>
		            <p class="text-center">Doesn't have an account yet? <a href="register">Sign Up here</a></p>
                    
                    
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>