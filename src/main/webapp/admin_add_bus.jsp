<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        		<%@ include file="adminsecuritycheck.jsp" %>
    
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
    
    <style type="text/css">
    /* form design*/
.form_main {
    width: 100%;
}
.form_main h4 {
    font-family: roboto;
    font-size: 20px;
    font-weight: 300;
    margin-bottom: 15px;
    margin-top: 20px;
    text-transform: uppercase;
}
.heading {
    border-bottom: 1px solid #fcab0e;
    padding-bottom: 9px;
    position: relative;
}
.heading span {
    background: #9e6600 none repeat scroll 0 0;
    bottom: -2px;
    height: 3px;
    left: 0;
    position: absolute;
    width: 75px;
}   
.form {
    border-radius: 7px;
    padding: 6px;
}
.txt[type="email"],[type="password"],[type="text"]{
    border: 1px solid #ccc;
    margin: 10px 0;
    padding: 10px 0 10px 5px;
    width: 100%;
}
.txt_3[type="email"] ,[type="password"],[type="text"]{
    margin: 10px 0 0;
    padding: 10px 0 10px 5px;
    width: 100%;
}
.txt2[type="submit"] {
    background: #242424 none repeat scroll 0 0;
    border: 1px solid #4f5c04;
    border-radius: 25px;
    color: #fff;
    font-size: 16px;
    font-style: normal;
    line-height: 35px;
    margin: 10px 0;
    padding: 0;
    text-transform: uppercase;
    width: 50%;
}
.txt2:hover {
    background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
    color: #5793ef;
    transition: all 0.5s ease 0s;
}
    </style>
    <title>Add Bus</title>
        	        <%@ include file="conjsp.jsp" %>
    
  </head>
  <body id="body">
  

<sql:query var="rs" dataSource="${db}">select * from admin where email="${email }"</sql:query>

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
            <img src="/images/Buslogotest.png" alt="" />
            <div class="main__greeting">
              <h1>Hello ${table.name }</h1>
              <p>Welcome to your dashboard</p>
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
                <p class="text-primary-p">Total Admins</p>
                <span class="font-bold text-title">2</span>
              </div>
            </div>

            <div class="card">
                        <i class="fa fa-handshake-o" aria-hidden="true"></i>
            
              <div class="card_inner">
                <p class="text-primary-p">Total Buses</p>
                <span class="font-bold text-title">5</span>
              </div>
            </div>

            <div class="card">
              <i
                class="fa fa-user-secret"
                aria-hidden="true"
              ></i>
              <div class="card_inner">
                <p class="text-primary-p">Total User</p>
                <span class="font-bold text-title">10</span>
              </div>
            </div>

            <div class="card">
              <i
                class="fa fa-building-o
                aria-hidden="true"
              ></i>
              <div class="card_inner">
                <p class="text-primary-p">Total Booking</p>
                <span class="font-bold text-title">5</span>
              </div>
            </div>
          </div>
          <!-- MAIN TITLE ENDS HERE -->

          <!-- MAIN CARDS STARTS HERE -->
          <div class="main__cards">
          
          <div class="main__cards">
          
            <div class="form_main">
                <h4 class="heading"><strong>Add </strong>bus :-<span></span></h4>
                <div class="form">
                <form action="add_busservlet" method="post" id="contactFrm" name="contactFrm">
                    <input type="text" required="" placeholder="Bus Name" value="" name="busname" class="txt">
                    <input type="text" required="" placeholder="Source" value="" name="source" class="txt">
                    <input type="text" required="" placeholder="Destination" value="" name="destination" class="txt">
                    <input type="text" required="" placeholder="Bus Type" value="" name="bustype" class="txt">
                    <input type="text" required="" placeholder="Arrival Timing" value="" name="atiming" class="txt">
                    <input type="text" required="" placeholder="Departure Timing" value="" name="dtiming" class="txt">
                    <input type="date" required="" placeholder="" value="" name="busdate" class="txt">
                    <input type="text" required="" placeholder="Duration" value="" name="duration" class="txt">
                    <input type="text" required="" placeholder="Bus Fare" value="" name="busfare" class="txt">
                    <input type="text" required="" placeholder="Total Seat" value="" name="totalseat" class="txt">
                     <input type="submit" value="submit" name="submit" class="txt2">
                </form>
            </div>
            </div>
            </div>
      </main>
 

  <div id="sidebar">
        <div class="sidebar__title">
          <div class="sidebar__img">
            <img src="images/Buslogotest.png" alt="logo" />
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
            <a href="#">ADMIN_DASHBOARD</a>
          </div>
          <h2>SETTINGS</h2>
          <div class="sidebar__link">
            <i class="fa fa-user-secret" aria-hidden="true"></i>
            <a href="add_admin.jsp">Add New Admin</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-user-secret" aria-hidden="true"></i>
            <a href="admin_add_bus.jsp">Add New Bus</a>
          </div>
          
 
          <h2>VIEW</h2>
          
          <div class="sidebar__link">
            <i class="fa fa-question"></i>
            <a href="admin_show_bookings.jsp">Show Bookings</a>
          </div>
          
          <div class="sidebar__link">
            <i class="fa fa-sign-out"></i>
            <a href="admin_show_buslist.jsp">Show_bus_chart</a>
          </div>
          
           <div class="sidebar__link">
            <i class="fa fa-sign-out"></i>
            <a href="admin_show_users.jsp">Show_Users</a>
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
