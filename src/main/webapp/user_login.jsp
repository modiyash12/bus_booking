<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
     
    <title>User Login</title>
</head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="display: flex;">
          <img src="https://i.ibb.co/Z10sT0B/Buslogotest.png" height="70px" width="70px">
        </nav>
        <section>
          <div class="container">
            <div class="user signinBx">
      
              <div class="imgBx"><img src="https://images.unsplash.com/photo-1467278941343-c6d371b23a90?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80" alt="" /></div>
              <div class="formBx">
                <form action="Loginservlet" method="Post"> 
                  <h2>User LogIn</h2>
                  <input type="email" name="email" placeholder="Email" id="em"/>
                  <small id="lblemail" style="color:red; visibility:hidden; font-size: 10px;">Email*</small>
                  <input type="password" name="password" placeholder="Password" id="pa"/>
                  <small id="lblpass"  style="color:red; visibility:hidden; font-size: 5px;"> Password</small>
                   <span class="show">SHOW</span>
                  <br>
                  <input type="submit"  value="Login" />
                  <br>
                  <a href="forgot_password.jsp">Forgot your password?</a>
                  <p class="signup">
                    Don't have an account ?
                    <a href="user_reg.jsp" >Sign Up.</a>
                  </p>
                </form>
              </div>
            </div>
           
            
          </div>
        </section>
        <script>
         const pass_field = document.querySelector('.pass-key');
         const showBtn = document.querySelector('.show');
         showBtn.addEventListener('click', function(){
          if(pass_field.type === "password"){
            pass_field.type = "text";
            showBtn.textContent = "HIDE";
            showBtn.style.color = "#3498db";
          }else{
            pass_field.type = "password";
            showBtn.textContent = "SHOW";
            showBtn.style.color = "#222";
          }
         });
      </script>
        
</body>

</html>
    
    
