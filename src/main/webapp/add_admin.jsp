<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        		<%@ include file="adminsecuritycheck.jsp" %>
    
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
    
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap");

/*  styling scrollbars  */
::-webkit-scrollbar {
  width: 5px;
  height: 6px;
}

::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px #a5aaad;
  border-radius: 10px;
}

::-webkit-scrollbar-thumb {
  background: #3ea175;
  border-radius: 10px;
}

::-webkit-scrollbar-thumb:hover {
  background: #a5aaad;
}

* {
  margin: 0;
  padding: 0;
}

body {
  box-sizing: border-box;
  font-family: "Lato", sans-serif;
}

.text-primary-p {
  color: #a5aaad;
  font-size: 14px;
  font-weight: 700;
}

.font-bold {
  font-weight: 700;
}

.text-title {
  color: #2e4a66;
}

.text-lightblue {
  color: #469cac;
}

.text-red {
  color: #cc3d38;
}

.text-yellow {
  color: #a98921;
}

.text-green {
  color: #3b9668;
}

.container {
  display: grid;
  height: 100vh;
  grid-template-columns: 0.8fr 1fr 1fr 1fr;
  grid-template-rows: 0.2fr 3fr;
  grid-template-areas:
    "sidebar nav nav nav"
    "sidebar main main main";
  /* grid-gap: 0.2rem; */
}

.navbar {
  background: #ffffff;
  grid-area: nav;
  height: 60px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 30px 0 30px;
  border-bottom: 1px solid lightgray;
}

.nav_icon {
  display: none;
}

.nav_icon > i {
  font-size: 26px;
  color: #a5aaad;
}

.navbar__left > a {
  margin-right: 30px;
  text-decoration: none;
  color: #a5aaad;
  font-size: 15px;
  font-weight: 700;
}

.navbar__left .active_link {
  color: #265acc;
  border-bottom: 3px solid #265acc;
  padding-bottom: 12px;
}

.navbar__right {
  display: flex;
  justify-content: center;
  align-items: center;
}

.navbar__right > a {
  margin-left: 20px;
  text-decoration: none;
}

.navbar__right > a > i {
  color: #a5aaad;
  font-size: 16px;
  border-radius: 50px;
  background: #ffffff;
  box-shadow: 2px 2px 5px #d9d9d9, -2px -2px 5px #ffffff;
  padding: 7px;
}

main {
  background: #f3f4f6;
  grid-area: main;
  overflow-y: auto;
}

.main__container {
  padding: 20px 35px;
}

.main__title {
  display: flex;
  align-items: center;
}

.main__title > img {
  max-height: 100px;
  object-fit: contain;
  margin-right: 20px;
}

.main__greeting > h1 {
  font-size: 24px;
  color: #2e4a66;
  margin-bottom: 5px;
}

.main__greeting > p {
  font-size: 14px;
  font-weight: 700;
  color: #a5aaad;
}

.main__cards {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  gap: 30px;
  margin: 20px 0;
}

.card {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  height: 70px;
  padding: 25px;
  border-radius: 5px;
  background: #ffffff;
  box-shadow: 5px 5px 13px #ededed, -5px -5px 13px #ffffff;
}

.card_inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.card_inner > span {
  font-size: 25px;
}

.charts {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 30px;
  margin-top: 50px;
}

.charts__left {
  padding: 25px;
  border-radius: 5px;
  background: #ffffff;
  box-shadow: 5px 5px 13px #ededed, -5px -5px 13px #ffffff;
}

.charts_left_title {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.charts_left_title > div > h1 {
  font-size: 24px;
  color: #2e4a66;
  margin-bottom: 5px;
}

.charts_left_title > div > p {
  font-size: 14px;
  font-weight: 700;
  color: #a5aaad;
}

.charts_left_title > i {
  color: #ffffff;
  font-size: 20px;
  background: #ffc100;
  border-radius: 200px 0px 200px 200px;
  -moz-border-radius: 200px 0px 200px 200px;
  -webkit-border-radius: 200px 0px 200px 200px;
  border: 0px solid #000000;
  padding: 15px;
}



.charts_left_cards {
  display: grid;
  gap: 20px;
  margin-top: 30px;
}

.charts_left_cards input{
	color:#fff;
padding:10px;
  border-radius: 5px solid blue;
  

}

.card1 {
  background: #d1ecf1;
  color: #35a4ba;
  text-align: center;
  padding: 25px;
  border-radius: 5px;
  font-size: 14px;
}

.card2 {
  background: #d2f9ee;
  color: #38e1b0;
  text-align: center;
  padding: 25px;
  border-radius: 5px;
  font-size: 14px;
}

.card3 {
  background: #d6d8d9;
  color: #3a3e41;
  text-align: center;
  padding: 50px;
  border-radius: 5px;
  font-size: 14px;
}
	





.charts__right {
  padding: 25px;
  border-radius: 5px;
  background: #ffffff;
  box-shadow: 5px 5px 13px #ededed, -5px -5px 13px #ffffff;
}

.charts_right_title {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.charts_right_title > div > h1 {
  font-size: 24px;
  color: #2e4a66;
  margin-bottom: 5px;
}

.charts_right_title > div > p {
  font-size: 14px;
  font-weight: 700;
  color: #a5aaad;
}

.charts_right_title > i {
  color: #ffffff;
  font-size: 20px;
  background: #39447a;
  border-radius: 200px 0px 200px 200px;
  -moz-border-radius: 200px 0px 200px 200px;
  -webkit-border-radius: 200px 0px 200px 200px;
  border: 0px solid #000000;
  padding: 15px;
}

.charts_right_cards {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 20px;
  margin-top: 30px;
}


.card1 {
  background: #d1ecf1;
  color: #35a4ba;
  text-align: center;
  padding: 25px;
  border-radius: 5px;
  font-size: 14px;
}

.card2 {
  background: #d2f9ee;
  color: #38e1b0;
  text-align: center;
  padding: 25px;
  border-radius: 5px;
  font-size: 14px;
}

.card3 {
  background: #d6d8d9;
  color: #3a3e41;
  text-align: center;
  padding: 25px;
  border-radius: 5px;
  font-size: 14px;
}

.card4 {
  background: #fddcdf;
  color: #f65a6f;
  text-align: center;
  padding: 25px;
  border-radius: 5px;
  font-size: 14px;
}

/*  SIDEBAR STARTS HERE  */

#sidebar {
  background: #020509;
  grid-area: sidebar;
  overflow-y: auto;
  padding: 20px;
  -webkit-transition: all 0.5s;
  transition: all 0.5s;
}

.sidebar__title {
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: #f3f4f6;
  margin-bottom: 30px;
  /* color: #E85B6B; */
}

.sidebar__img {
  display: flex;
  align-items: center;
}

.sidebar__title > div > img {
  width: 75px;
  object-fit: contain;
}

.sidebar__title > div > h1 {
  font-size: 18px;
  display: inline;
}

.sidebar__title > i {
  font-size: 18px;
  display: none;
}

.sidebar__menu > h2 {
  color: #3ea175;
  font-size: 16px;
  margin-top: 15px;
  margin-bottom: 5px;
  padding: 0 10px;
  font-weight: 700;
}

.sidebar__link {
  color: #f3f4f6;
  padding: 10px;
  border-radius: 3px;
  margin-bottom: 5px;
}

.active_menu_link {
  background: rgba(62, 161, 117, 0.3);
  color: #3ea175;
}

.active_menu_link a {
  color: #3ea175 !important;
}

.sidebar__link > a {
  text-decoration: none;
  color: #a5aaad;
  font-weight: 700;
}

.sidebar__link > i {
  margin-right: 10px;
  font-size: 18px;
}

.sidebar__logout {
  margin-top: 20px;
  padding: 10px;
  color: #e65061;
}

.sidebar__logout > a {
  text-decoration: none;
  color: #e65061;
  font-weight: 700;
  text-transform: uppercase;
}

.sidebar__logout > i {
  margin-right: 10px;
  font-size: 18px;
}

.sidebar_responsive {
  display: inline !important;
  z-index: 9999 !important;
  left: 0 !important;
  position: absolute;
}

@media only screen and (max-width: 978px) {
  .container {
    grid-template-columns: 1fr;
    /* grid-template-rows: 0.2fr 2.2fr; */
    grid-template-rows: 0.2fr 3fr;
    grid-template-areas:
      "nav"
      "main";
  }

  #sidebar {
    display: none;
  }

  .sidebar__title > i {
    display: inline;
  }

  .nav_icon {
    display: inline;
  }
}

@media only screen and (max-width: 855px) {
  .main__cards {
    grid-template-columns: 1fr;
    gap: 10px;
    margin-bottom: 0;
  }

  .charts {
    grid-template-columns: 1fr;
    margin-top: 30px;
  }
}

@media only screen and (max-width: 480px) {
  .navbar__left {
    display: none;
  }
}
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
    <link rel="stylesheet" href="css/dashboard.css" />
    <title>Add Admin</title>
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
              <p>Add New Admin</p>
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
          
            <div class="form_main">
                <h4 class="heading"><strong>Add </strong>Admin :-<span></span></h4>
                <div class="form">
                <form action="Add_admin_servlet" method="post" id="contactFrm" name="contactFrm">
                    <input type="text" required="" placeholder="Name" value="" name="name" class="txt">
                    <input type="email" required="" placeholder="Email Id" value="" name="email" class="txt">
                    <input type="password" required="" placeholder=" Password" value="" name="password" class="txt">
                    <input type="text" required="" placeholder="Phone Number" value="" name="phoneno" class="txt">
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
          <div class="sidebar__link ">
            <i class="fa fa-home"></i>
            <a href="#">ADMIN_DASHBOARD</a>
          </div>
          <h2>SETTINGS</h2>
          <div class="sidebar__link active_menu_link">
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
            <a href="logout.java">Logout</a>
          </div>
        </div>
      </div>
    </div>
   
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script>
        // Sidebar Toggle Codes;

var sidebarOpen = false;
var sidebar = document.getElementById("sidebar");
var sidebarCloseIcon = document.getElementById("sidebarIcon");

function toggleSidebar() {
  if (!sidebarOpen) {
    sidebar.classList.add("sidebar_responsive");
    sidebarOpen = true;
  }
}

function closeSidebar() {
  if (sidebarOpen) {
    sidebar.classList.remove("sidebar_responsive");
    sidebarOpen = false;
  }
}
    </script>
    </c:forEach>
  </body>
</html>