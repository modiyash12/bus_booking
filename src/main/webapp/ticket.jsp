<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	
 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ticket</title>
            	        <%@ include file="conjsp.jsp" %>
    
<style>
body {
    background-color: #ebeff2
}

.card {
    background-color: white;
    border: none;
    border-radius: 5px;
    box-shadow: 5px 6px 6px 2px #e9ecef
}

.allergy {
    position: relative;
    bottom: 8px;
    color: grey
}

.head {
    color: #97989a;
    font-size: 12px
}

.bottom {
    color: grey;
    font-size: 14px
}
</style>
       <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
   
  </head>
  
  
  
  <body>
<sql:query var="rs" dataSource="${db}"> select *  from booking_details where bookid= "${param.bookid}"</sql:query>

	
<c:forEach var="book" items="${rs.rows}">

<div class="container mt-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-7">
            <div class="card p-2 text-center">
                <div class="row">
                    <div class="col-md-7 border-right no-gutters">
                        <div class="py-3"><img src="Buslogotest.png" width="100" class="rounded-circle">
                            <h4 class="text-secondary">Welcome To Go bus</h4>
                            <div class="allergy"><span>Book id :: ${book.bookid }</span></div>
                            <div class="stats">
                                <table class="table table-borderless">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="d-flex flex-column"> <span class="text-left head">Source</span> <span class="text-left bottom">${book.source }</span> </div>
                                            </td>
                                            <td>
                                                <div class="d-flex flex-column"> <span class="text-left head">Destination</span> <span class="text-left bottom">${book.destination}</span> </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex flex-column"> <span class="text-left head">Bus Date</span> <span class="text-left bottom">${book.busdate }</span> </div>
                                            </td>
                                            <td>
                                                <div class="d-flex flex-column"> <span class="text-left head">Bus Fare</span> <span class="text-left bottom">${book.busfare }</span> </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="px-3"><button type="button" class="btn btn-primary btn-block">Downlaod</button></div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="py-3">
                            <div> <span class="d-block head">Name</span> <span class="bottom">${book.name }</span> </div>
                            <div class="mt-4"> <span class="d-block head">Age</span> <span class="bottom">${book.age }</span> </div>
                            <div class="mt-4"> <span class="d-block head">Departure Timing</span> <span class="bottom">${book.dtiming }</span> </div>
                            <div class="mt-4"> <span class="d-block head">Seat No</span> <span class="bottom">${book.seatno }</span> </div>
                            <div class="mt-4"> <span class="d-block head">Book Date</span> <span class="bottom">${book.bookdate }</span> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </c:forEach>  
    
  </body>
  
</html>