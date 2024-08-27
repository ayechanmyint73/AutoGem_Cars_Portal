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
<title>AutoGem | All Users Page</title>
<%@ page isELIgnored="false"%>

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
        
        .editbtn{
            color: var(--main-color);
            align-items: center;
            padding: 5px;
        }
    </style>
</head>
<body>



	<div class="container">
	

			<center><h2>Manage All Users </h2></center><br><br>

	

				<table border="1" class="table table-hover">
					<thead>
						<tr class="text-center">
							<th>Id</th>
							<th>Name</th>
							<th>UserName</th>
							<th>Password</th>
							<th>Email</th>
							<th>Location</th>
							<!--  <th colspan="2" style="text-align: center;">Actions</th>  -->
						</tr>
					</thead>
					
					<c:forEach var="user" items="${userlists}">
						<tbody>
							<tr>
								<td><span> ${user.id} </span></td>
								<td><span> ${user.name} </span></td>
								<td><span> ${user.userName }</span></td>
								<td><span> ***** </span></td>
								<td><span> ${user.email }</span></td>
								<td><span> ${user.location }</span></td>
								
								<!--  <td><span>
									<form:form action="updateUser" method="get">
										<input type="hidden" name="id" value="${user.id}" />
										<a href="" class="editbtn">Update</a>
									</form:form>
								</span></td>
								
	
								<td><span>
									<form:form action="deleteStore" method="get">
										<input type="hidden" name="id" value="${user.id}" />
										<a href="" class="editbtn">Delete</a>
									</form:form>
								</span></td> -->

							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>

    <%@ include file="footer.jsp" %>
</body>
</html>