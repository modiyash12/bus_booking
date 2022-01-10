<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    		<%@ include file="usersecuritycheck.jsp" %>
    
   	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
    <link href='https://use.fontawesome.com/releases/v5.7.2/css/all.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script type='text/javascript' src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'></script>
</head>
<style>


    .inlineimage {
    max-width: 470px;
    margin-right: 8px;
    margin-left: 10px
}

.images {
    display: inline-block;
    max-width: 98%;
    height: auto;
    width: 22%;
    margin: 1%;
    left: 20px;
    text-align: center
}

.bg{
    background-color:#d2ddd1;
}
.text {
    font-weight: bold;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    padding: 10px;
}

</style>

<body>


    <div class="container">
             <div class="bg">
        <div class="page-header ">
            <!-- text-center -->
            <a href="#back"><img src="https://www.searchpng.com/wp-content/uploads/2019/12/Back-Button-PNG.jpg" height="50px" width="50px"></a>
           <center> <h1 class="text">Credit Card Payment Gateway</h1> </center>
        </div>
        <!-- Credit Card Payment Form - START -->
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="row">
                                <h3 class="text-center">Payment Details</h3>
                                <div class="inlineimage"> 
                                <img class="img-responsive images" src="https://cdn0.iconfinder.com/data/icons/credit-card-debit-card-payment-PNG/128/Mastercard-Curved.png">
                                <img class="img-responsive images" src="https://www.searchpng.com/wp-content/uploads/2020/06/Paytm_Icon_PNG.jpg"> 
                                <img class="img-responsive images" src="https://www.searchpng.com/wp-content/uploads/2019/12/PhonePe-Logo-PNG.jpg"> 
                                <img class="img-responsive images" src="https://www.searchpng.com/wp-content/uploads/2020/06/Google-Pay-Logo-PNG-Image.jpg"> </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form role="form" action="payment" method="post">
                            
                            <input type="hidden" name="bookid" value="${bookid }">
                            
                            <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group"> <label>TOTAL AMOUNT</label>
                                            <div class="input-group"> <input type="text" class="form-control"  value="${total_pay }"  name="payment" readonly /> <span class="input-group-addon" ><span class="fas fa-rupee-sign"></span></span> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group"> <label>CARD NUMBER</label>
                                            <div class="input-group"> <input type="text" class="form-control" placeholder="Valid Card Number" name="cardnumber" /> <span class="input-group-addon"><span class="fa fa-credit-card"></span></span> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-7 col-md-7">
                                        <div class="form-group"> <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label> <input type="text" class="form-control" placeholder="MM / YY"  name="cardexpiry"/> </div>
                                    </div>
                                    <div class="col-xs-5 col-md-5 pull-right">
                                        <div class="form-group"> <label>CV CODE</label> <input type="text" class="form-control" placeholder="CVC" /> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group"> <label>CARD OWNER</label> <input type="text" class="form-control" placeholder="Card Owner Name" name="cardname"/> </div>
                                    </div>
                                </div>
                               <div class="panel-footer">
                            		<div class="row">
                                	<div class="col-xs-12"> <button class="btn btn-success btn-lg btn-block"type="submit">PAY</button> </div>
                           	   </div>
                        </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
         </div>
                </div>
    </div>
    
</body>
</html>