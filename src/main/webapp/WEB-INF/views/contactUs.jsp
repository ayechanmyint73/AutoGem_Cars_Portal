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
<title>AutoGem | Contact Us Page</title>

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
            --promotion-color: rgb(226, 206, 193);
        }

        .location{
            background-color: var(--promotion-color);
            padding: 20px;
        }

        .location-card{
            border-radius: 10px;
            box-shadow: 30px;
        }

        .contact-div{
            display: flex;
            position: relative;
            align-items: center;
        }

        .contact{
            margin-left: 15px;
        }

        .contact::after{
            content: "";
            display: block;
            width: 100px;
            height: 4px;
            background-color: var(--main-color);
        }

        .contact-icons{
            font-size: 30px;
            color: var(--main-color);
            margin-top: 30px;
            padding-right: 18px;
        }

        .location-body{
            font-size: 17px;
            line-height: 30px;
        }

        .title{
            color: var(--text-color);
            font-weight: bold;
        }


        .ask-title{
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .dash{
            content: "";
            display: block;
            width: 120px;
            height: 4px;
            background-color: var(--main-color);
            margin-bottom: 10px;
        }

        .ask-anything{
            margin-top: 50px;
        }

        .form-check-label{
            margin-right: 30px;
        }

        .sendbtn{
            width: 80%;
            padding: 5px;
            background-color: var(--main-color);
            color: white;
        }

        .sendbtn:hover{
            opacity: 0.95;
            color: white;
            font-weight: bold;
        }

        .contact-form{
            margin: 40px 0px;
        }
    </style>
</head>
<body>

	<div class="container-fluid location">
        <div class="container">
            <div class="contact-div">
                <div>
                    <img src="../car-images/contact.svg" alt="" width="300px" height="300px">
                </div>
                <div>
                    <h3 class="contact mx-auto">Contact Us</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="card location-card">
                        <h4 class="text-center title"><i class="fa-solid fa-map-location-dot contact-icons"></i>Visit Us</h4><hr width="80%" class="mx-auto">
                        <div class="card-body location-body">
                            <div class="card-text">No.128, James Street, <br> South Okkalapa, Yangon, Myanmar </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="card location-card">
                        <h4 class="text-center title"><i class="fa-solid fa-address-card contact-icons"></i>Contact Us</h4><hr width="80%" class="mx-auto">
                        <div class="card-body location-body">
                            <div class="card-text">Office :  <a href="">+ 95 842 742 180</a> <br> Email  : <a href="">autoGem@gmail.com</a> </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="card location-card">
                        <h4 class="text-center title"><i class="fa-solid fa-clock contact-icons"></i>Opening Hours</h4><hr width="80%" class="mx-auto">
                        <div class="card-body location-body">
                            <div class="card-text"> Mon - Sun : 9:00am - 6:00pm <br> 
                                <span style="color: rgb(142, 139, 139);">Excluding Public Holidays</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid ask-anything">
        <div class="ask-title title ">
            <span class="dash"></span>
            <h4>Always Here For You </h4>
            <h5>Ask Us Anything</h5>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-6 contact-form">
                    <form action="/contact">
                        <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Name">
                          </div>
                          <div class="form-group col-md-6">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="Email">
                          </div>
                        </div>
    
                        <div class="form-row">
                            <div class="form-group col-md-6">
                              <label for="phone">Phone Number</label>
                              <input type="text" class="form-control" id="phone" placeholder="Phone Number">
                            </div>
                            <div class="form-group col-md-6">
                              <label for="email">Reason of Enquiry</label>
                              <select id="inputState" class="form-control">
                                <option selected disabled>Please select a reason...</option>
                                <option>General Enquiry</option>
                                <option>Complaint</option>
                              </select>
                            </div>
                        </div>
                        
                        
    
                        <div class="form-group">
                            <label for="inputAddress">Your Message</label>
                            <textarea name="" id="" cols="25" rows="10" class="form-control" placeholder="Input your message to us..."></textarea>
                        </div>
                        
                          
                        <div class="form-group">
                            <label for="">Preferred mode of contact </label>
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <label class="form-check-label" for="gridCheck">
                              Phone
                            </label>
    
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <label class="form-check-label" for="gridCheck">
                              Email
                            </label>
                          </div>
                        </div>
                        <button type="submit" class="btn sendbtn mx-auto d-block" style="width: 80%;
            padding: 5px;
            background-color: var(--main-color);
            color: white;">Send</button>
                      </form>
                </div>
                <div class="col-sm-6 contact-form">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61075.024272875584!2d96.13704485644915!3d16.915965945832024!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c191619a23cd65%3A0xe0ec4d6f36651bf4!2sNorth%20Okkalapa%20Township%2C%20Yangon!5e0!3m2!1sen!2smm!4v1713714312836!5m2!1sen!2smm" 
                    width="600" height="570" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="mx-auto d-block img-fluid"></iframe>
                </div>
            </div>
        </div>
    </div>
    
        <%@ include file="footer.jsp" %>

</body>
</html>