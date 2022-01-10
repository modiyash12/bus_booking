<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    		<%@ include file="usersecuritycheck.jsp" %>
    
    <%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>  
    
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/dashboard.css" />
    <title>USER DASHBOARD</title>
        	        <%@ include file="conjsp.jsp" %>
    
  </head>
  <body id="body">
  

<sql:query var="rs" dataSource="${db}">select * from user_details where custid="${custid }"</sql:query>

<c:forEach var="table" items="${rs.rows}"> 

    <div class="container">
      <nav class="navbar">
        <div class="nav_icon" onclick="toggleSidebar()">
          <i class="fa fa-bars" aria-hidden="true"></i>
        </div>
        <div class="navbar__left">
          <a href="#">Welcome</a>
          <a class="active_link" href="#">${table.name }</a>
        </div>
        <div class="navbar__right">
          <a href="#">
            <i class="fa fa-search" aria-hidden="true"></i>
          </a>
          <a href="#">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
          </a>
          <a href="#">
            <img width="30" src="assets/avatar.svg" alt="" />
            <!-- <i class="fa fa-user-circle-o" aria-hidden="true"></i> -->
          </a>
        </div>
      </nav>

      <main>
        <div class="main__container">
          <!-- MAIN TITLE STARTS HERE -->

          <div class="main__title">
            <img src="Buslogotest.png" alt="" />
            <div class="main__greeting">
              <h1>Hello ${table.name }</h1>
              <p>Full Bus List</p>
            </div>
          </div>

          <!-- MAIN TITLE ENDS HERE -->

          <!-- MAIN CARDS STARTS HERE -->
          <div class="main__cards">
            <div class="card">
              <i
                class="fa fa-user-o fa-2x text-lightblue"
                aria-hidden="true"
              ></i>
              <div class="card_inner">
                <p class="text-primary-p">CUST ID</p>
                <span class="font-bold text-title">${table.custid }</span>
              </div>
            </div>

            <div class="card">
                        <i class="fa fa-handshake-o" aria-hidden="true"></i>
            
              <div class="card_inner">
                <p class="text-primary-p">JOINING DATE</p>
                <span class="font-bold text-title">${table.regdate }</span>
              </div>
            </div>

            <div class="card">
              <i
                class="fa fa-user-secret"
                aria-hidden="true"
              ></i>
              <div class="card_inner">
                <p class="text-primary-p">Total Duration</p>
                <span class="font-bold text-title">3 Yrs</span>
              </div>
            </div>

            <div class="card">
              <i
                class="fa fa-building-o
                aria-hidden="true"
              ></i>
              <div class="card_inner">
                <p class="text-primary-p">CITY</p>
                <span class="font-bold text-title">${table.city }</span>
              </div>
            </div>
          </div>
          <!-- MAIN CARDS ENDS HERE -->

          <!-- CHARTS STARTS HERE -->
          
                     <sql:query var="rs" dataSource="${db}">select * from booking_details where custid="${custid }" and paystatus ='paid'</sql:query>
          
          <table border="2" width="100%">  
<tr>  
<th>Book ID</th>  
<th> CUST ID</th>  
<th>BUS ID</th>  
<th>SOURCE</th>  
<th>DESTINATION</th>  
<th>BUS TYPE</th>  
<th>Departure TIMING</th>  
<th>Bus DATE</th>
<th>BUS FARE</th>   
<th>Name</th>
<th>Age</th>  
<th>Book Date</th>  
<th>Seat no</th>  
<th>Action</th>

</tr>  
          
<c:forEach var="blist" items="${rs.rows}"> 

<tr>  
<td><c:out value="${blist.bookid}"/></td> 
<td><c:out value="${blist.custid}"/></td>
<td><c:out value="${blist.busid}"/></td> 
<td><c:out value="${blist.source}"/></td>  
<td><c:out value="${blist.destination}"/></td>  
<td><c:out value="${blist.bustype}"/></td>  
<td><c:out value="${blist.dtiming}"/></td>  
<td><c:out value="${blist.busdate}"/></td>  
<td><c:out value="${blist.busfare}"/></td> 
<td><c:out value="${blist.name}"/></td> 
<td><c:out value="${blist.age}"/></td> 
<td><c:out value="${blist.bookdate}"/></td> 
<td><c:out value="${blist.seatno}"/></td> 
<td><c:out value="${blist.seatno}"/></td> 
<td><a href="ticket.jsp?bookid=${blist.bookid}">Print Ticket</a></td> 


</tr>

</c:forEach>
          
   </table>       
       
          <!-- CHARTS ENDS HERE -->
        </div>
      </main>

      <div id="sidebar">
        <div class="sidebar__title">
          <div class="sidebar__img">
            <img src="Buslogotest.png" alt="logo" />
            <h1>Go Bus</h1>
          </div>
          <i
            onclick="closeSidebar()"
            class="fa fa-times"
            id="sidebarIcon"
            aria-hidden="true"
          ></i>
        </div>

        <div class="sidebar__menu">
          <div class="sidebar__link active_menu_link">
            <i class="fa fa-home"></i>
            <a href="user_dashboard.jsp">USER_DASHBOARD</a>
          </div>
          <h2>SETTINGS</h2>
          <div class="sidebar__link">
            <i class="fa fa-user-secret" aria-hidden="true"></i>
            <a href="user_edit_details.jsp?=${table.custid }">Edit Personal Details</a>
          </div>
          
 
          <h2>Bookings</h2>
          <div class="sidebar__link">
            <i class="fa fa-question"></i>
            <a href="booking_history.jsp">Booking History</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-sign-out"></i>
            <a href="user_show_buses.jsp">Show_bus_chart</a>
          </div>
         
          <h2>BACK TO HOME</h2>
          
          <div class="sidebar__link">
            <i class="fa fa-question"></i>
            <a href="aboutus.html">About Us</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-briefcase"></i>
            <a href="service.html">Go bus Services</a>
          </div>
          
          <div class="sidebar__logout">
            <i class="fa fa-power-off"></i>
            <a href="logout.java">Log out</a>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="js/side.js"></script>
    </c:forEach>
  </body>
</html>
