<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">


  <link rel="stylesheet" href="css/forgot_pass.css">
  <title>Update Password</title>
</head>
<body>
  <nav class="navbar navbar-dark navbar-expand-md fixed-top bg-dark">
    <div class="container-fluid"><a class="navbar-brand" href="index.jsp">Go bus</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        
    </div>
</nav>
  
  <div class="card login-form">
    <div class="card-body">
      <div class="text-center">
      <img src="https://i.ibb.co/mJvP9KB/shield.png" alt="shield" border="0"></a>
      </div>
      <h2 class="card-title text-center"><b><u>Update Password</u></b></h2>
      <form action="change_pass_servlet" method="post">
      <!--Password must contain one lowercase letter, one number, and be at least 7 characters long.-->
      
     <input type="hidden" name="email" value="${email }">
     
          <div class="form-group">
           
            <input type="text" name="password"  class="form-control form-control-sm" placeholder="Password">
          </div>
          <div class="form-group">
         
            <input type="text" name="cpassword"  class="form-control form-control-sm" placeholder="Enter Confirm Password">
          </div>
          <button type="submit" class="btn btn-primary btn-block submit-btn">Confirm</button>
        </form>
      </div>
    </div>
  </div>
</body>
</html>