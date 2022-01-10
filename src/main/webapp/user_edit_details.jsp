<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     		<%@ include file="usersecuritycheck.jsp" %>
     
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>  
    
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
	
<!doctype html>
    <html>
                            <head>
                                <meta charset='utf-8'>
                                <meta name='viewport' content='width=device-width, initial-scale=1'>
                                <title></title>
                                <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
                                <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
                                <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                <style>
                                    
                                @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@700&family=Roboto&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif
}

body {
    background-color: #ECEFA4;
}

.container {
    padding: 20px 50px;
    min-height: 450px
}



.h4 {
    font-family: 'Poppins', sans-serif
}

a {
    color: #333
}

a:hover {
    text-decoration: none;
    color: #444
}





div.btn,
button.btn {
    background-color: #ac1f32;
    color: #eee
}

div.btn:hover,
button.btn:hover {
    background-color: #ac1f32d7
}

.navbar-light .navbar-nav .nav-link {
    color: #333
}

nav {
    float: left
}

#language {
    float: right
}

#language select {
    border: none;
    outline: none
}

.wrapper {
    width: 85%;
    margin: 20px auto;
    box-shadow: 1px 1px 30px 10px rgba(250, 250, 250, 0.8)
}

.h3 {
    padding-top: 40px;
    font-size: 34px
}

label {
    display: block;
    font-size: 0.8rem;
    font-weight: 700
}

input {
    border: none;
    outline: none;
    border-bottom: 2px solid #ddd;
    width: 100%;
    padding-bottom: 10px
}

.wrapper {
    clear: both
}

#country {
    border: none;
    outline: none;
    width: 100%;
    padding-bottom: 12px;
    border-bottom: 2px solid #ddd
}

.wrapper .col-md-6:hover label {
    color: #ac1f32
}

.wrapper .col-md-6:hover input,
.wrapper .col-md-6:hover #country {
    border-color: #ac1f32;
    cursor: pointer
}

.wrapper .col-md-6 input:focus {
    border-color: #ac1f32
}

.option {
    position: relative;
    padding-left: 30px;
    display: block;
    cursor: pointer;
    color: #888
}

.option input {
    display: none
}

.checkmark {
    position: absolute;
    top: -1px;
    left: 0;
    height: 20px;
    width: 20px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 50%
}

.option input:checked~.checkmark:after {
    display: block
}

.option .checkmark:after {
    content: "\2713";
    width: 10px;
    height: 10px;
    display: block;
    position: absolute;
    top: 30%;
    left: 50%;
    transform: translate(-50%, -50%) scale(0);
    transition: 200ms ease-in-out 0s
}

.option:hover input[type="radio"]~.checkmark {
    background-color: #f4f4f4
}

.option input[type="radio"]:checked~.checkmark {
    background: #ac1f32;
    color: #fff;
    transition: 300ms ease-in-out 0s
}

.option input[type="radio"]:checked~.checkmark:after {
    transform: translate(-50%, -50%) scale(1);
    color: #fff
}

@media (min-width: 992px) {
    .navbar-expand-lg .navbar-nav .nav-link {
        padding-right: 1.5rem;
        padding-left: 0rem
    }

    .navbar {
        padding: 0.5rem 0rem;
        width: 75%
    }
}

@media(max-width: 991px) {
    .dropdown-menu {
        border: none
    }

    #language {
        padding-top: 20px
    }

    .navbar {
        padding: 0.5rem 0rem
    }
}

@media(max-width: 767px) {
    .search input {
        width: 90%
    }

    .search {
        margin-bottom: 10px
    }

    div.btn {
        width: 100%
    }

    .h3 {
        font-size: 25px;
    }

    .brand {
        text-align: center
    }

    .container {
        padding: 20px;
        margin-left: 0px
    }

    .navbar {
        padding: 0.5rem 0rem
    }
}

@media(max-width: 374px) {
    .h3 {
        font-size: 21px;
    }
}</style>
</head>
 <body class='snippet-body'>
 
 
   <a href="user_dashboard.jsp">a</a>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"   url="jdbc:mysql://localhost/travel_app"   user="root"  password="Yash@1234"/> 

<sql:query var="rs" dataSource="${db}">select * from user_details where custid="${custid }"</sql:query>

<c:forEach var="table" items="${rs.rows}"> 

<div class="container bg-white mt-sm-4 mb-5">

    <div class="d-md-flex flex-md-row">
        <div class="brand text-uppercase h4 font-weight-bold">
             <a href="#"  style="color: #D54C4C;" > <img src="Buslogotest.png" style="height: 60px;width: 60px;"alt="LOGO">Go Bus</a> </div>
        </div>
        
  <form action="user_edit_servelet" method="post"> 
  
    <div class="wrapper d-flex justify-content-center flex-column px-md-5 px-1">
    
        <div class="h3 text-center font-weight-bold " style="color: #ac1f32;">Edit Personal Details</div>
        
        <input type="hidden" name="custid" value="${table.custid }">
        
        <div class="row my-4">
            <div class="col-md-6"> <label>Full Name</label> <input type="text" name="name" value="${table.name }" placeholder="Jhon Smith"  required> </div>
            <div class="col-md-6 pt-md-0 pt-4"> <label>Address</label> <input type="text"  name="address" value="${table.address }"placeholder="Address"  required> </div>
        </div>
        
        <div class="row my-md-4 my-1">
            <div class="col-md-6"> <label>E-Mail</label> <input type="E-mail" name="email" placeholder="jhon19@mail.com" value="${table.email }" required> </div>
            <div class="col-md-6 pt-md-0 pt-4"> <label>Phone</label> <input type="text"  value="${table.phoneno }"     pattern="[0-9]{3}[0-9]{3}[0-9]{4}" name="phoneno" placeholder="0000-000-000"  required> </div>
        </div>
       
        <div class="row my-md-4 my-2">
            <div class="col-md-6"> <label>Pin Code</label> <input type="text" name="pincode" placeholder="Pin-code" value="${table.pincode }" required> </div>
            <div class="col-md-6 pt-md-0 pt-4"> <label>City</label> <input type="text" name="city" placeholder="Enter city" value="${table.city }" required></div> 
        </div>
    
    	<div class="row my-md-4 my-1">
        	<div class="col-md-6"> <label>Securityquestion</label> <input  name="securityquestion" placeholder="Security Question" class="form-control" value="${table.securityquestion }"  type="text" required></div>
        	<div class="col-md-6 pt-md-0 pt-4"> <label>Answer</label><input  name="answer" placeholder="Answer" class="form-control" value="${table.answer }"  type="text" required>
        </div>
        
       <div class="row my-md-4 my-2">
        	<div class="col-md-6 pt-md-0 pt-4"> <label>Password</label> <input type="password" placeholder="Password" name="password"> </div>
       </div>
       
  </div>
  </div>
  
  
    <div class="d-flex justify-content-end"> <button class="btn" type="submit" onclick="registration();">Register Now</button> </div>
    
   </form>
</div>

   
   <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
        		
                </c:forEach>
        
                                </body>
                            </html>l>