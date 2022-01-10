<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
     
    <title></title>
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
                <form action="Admin_loginservlet" method="Post"> 
                  <h2>Admin LogIn</h2>
                  <input type="email" name="email" placeholder="Email" id="em"/>
                  <small id="lblemail" style="color:red; visibility:hidden; font-size: 10px;">Email*</small>
                  <input type="password" name="password" placeholder="Password" id="pa"/>
                  <small id="lblpass"  style="color:red; visibility:hidden; font-size: 5px;"> Password</small>
                  <br>
                  <input type="submit"  value="Login" />
                  <br>
                 
                </form>
              </div>
            </div>
           
            
          </div>
        </section>
        
</body>

</html>
