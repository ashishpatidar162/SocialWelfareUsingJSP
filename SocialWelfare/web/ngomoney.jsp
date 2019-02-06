<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Check.jsp" %>
<%
String ulevel=session.getAttribute("ulevel").toString();
String name=session.getAttribute("uname").toString();
%>

<html lang="en">
<head>

	<title>Social Wellfare Donation</title>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="team" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">

       
</head>











<body>

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>

    

     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="index.html" class="navbar-brand"><b>SOCIAL WELFARE DONATION</b></a>
               </div>

               <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                         <li><a href="#home" class="smoothScroll">Home</a></li>
                         <li><a href="#feature" class="smoothScroll">Contact Us</a></li>
                         <li ><a href="#about" class="smoothScroll">About us</a></li>
                         <li><a href="index.jsp" class="smoothScroll"></a></li> 
                         
                          <li><a href="index.jsp" class="smoothScroll"></a></li> 
                           <li><a href="index.jsp" class="smoothScroll"></a></li> 
                            <li><a href="index.jsp" class="smoothScroll"></a></li> 
                             <li><a href="index.jsp" class="smoothScroll"></a></li> 
                              <li><a href="index.jsp" class="smoothScroll"></a></li>
                              <li><a href="index.jsp" class="smoothScroll"></a></li> 
                              <li><a href="index.jsp" class="smoothScroll"></a></li>
                              <li><a href="index.jsp" class="smoothScroll"></a></li> 
                              <li><a href="index.jsp" class="smoothScroll"></a></li>
                         <li ><a href="home.jsp" class="smoothScroll"><%= name%></a></li>
                         <li ><a href="logout.jsp" class="smoothScroll">Logout</a></li> 
                    </ul>
                     <ul class="nav navbar-nav navbar-right">
                         <!--<div align="right"><%= name%><a href="home.jsp">&nbsp;&nbsp;HOME</a>&nbsp;&nbsp;<a href="logout.jsp">LOGOUT</a></div>--> 
                       <!--<p> <a href="javascript:void(0);" class="section-btn pricing-btn">Donate</a> </p>-->
                    </ul>
               </div>

          </div>
     </section>

   



     <!-- FEATURE -->
     <section id="home" data-stellar-background-ratio="0.5">
          <div class="overlay"></div>
          <div class="container">
               <div class="row">

                  
                    </div>

               </div>
          </div>
     </section>






</head>


<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>









<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Donation</title>
<link rel="stylesheet" type="text/css" href="css/view.css" media="all">
<script type="text/javascript" src="view.js"></script>

</head>
<body id="main_body" >
	
	<img id="top" src="images/top.png" alt="">
	<div id="form_container">
	
		<h1><a>Donation</a></h1>
                		<div class="form_description">
			<h2>Money Request</h2>
			<p></p>
		</div>		
		<form id="form_27981" class="appnitro"  action="ngomoneyaction.jsp" method="post">
				
           	<label  for="element_1">Enter Amount </label>
		<div>
                    <input id="element_1"  class="form-control" name="amount" placeholder="Amount" class="element text medium" type="number" maxlength="255"  required/> 
		</div> 
		</li>	
                <li id="li_3" >
		<label class="description" for="element_3">Payment Mode </label>
		<span>
                    <div>    <input id="element_3_1" name="paymode" class="element radio" type="radio" value="offline" onclick="instHide()" required />
                     <label class="choice" for="element_3_1">Offline Payment</label>

                         <input id="element_3_1" name="paymode" class="element radio" type="radio" value="online" onclick="instShow()" required />
                     <label class="choice" for="element_3_1">Online Payment</label>
                     
                     <a>  <input  type="tel" class="form-control" name="cardnumber" id="cardnumber" placeholder="Valid Card Number" style="display:none;" autocomplete="cc-number"  autofocus  pattern=".{16,16}" /></a>
                     <a>  <input 
                                                                type="tel" 
                                                                class="form-control" 
                                                                name="cardexpry"
                                                                id="cardexpry"
                                                                placeholder="MM / YY"
                                                                style="display:none;"
                                                                autocomplete="cc-exp"
                                                                
                                                                /></a>
                         
                     <a>     <input 
                                                                    type="tel" 
                                                                    class="form-control"
                                                                    name="cvv"
                                                                    id="cvv"
                                                                    placeholder="CVC"
                                                                    style="display:none;"
                                                                    autocomplete="cc-csc"
                                                                    
                                                                    pattern=".{3,3}"
                                                                    /></a>

                    </div>
                </li>	
               <li id="li_1" >
		<label class="description" for="element_1">Refrence Address - 21, Vesveswaraiya Marg Lantern Square, Indore, Madhya Pradesh</label>
		</li>
			
			<li id="li_1" >
		<label class="description" for="element_1">Your MSG</label>
		</li>
			<div>
                            <input id="element_1" name="msg"  class="element text medium" type="text" maxlength="100" value="" required/> 
	         	</div> <br>

               <div>
                     <button type="submit" name="submit" class="btn btn-block btn-primary" >Request</button>
               </div>
		
		</form>	
		
	</div>
	<img id="bottom" src="images/bottom.png" alt="">







                  

     <!-- FOOTER -->
     <footer id="footer" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                    <div class="copyright-text col-md-12 col-sm-12">
                         <div class="col-md-6 col-sm-6">
                              <p>Copyright &copy; 2018 Company_Title - </p>
                				
                         </div>

                         <div class="col-md-6 col-sm-6">
                              <ul class="social-icon">
                                   <li><a href="#" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                                   <li><a href="#" class="fa fa-twitter"></a></li>
                                   <li><a href="#" class="fa fa-instagram"></a></li>
                              </ul>
                         </div>
                    </div>

               </div>
          </div>
     </footer>


     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>
      <script type="text/javascript">
            function instShow() {
//                document.getElementById("cardnumber").style.visibility = "visible";
//                document.getElementById("cardexpry").style.visibility = "visible";
//                document.getElementById("cvv").style.visibility = "visible";
//                document.getElementById("cardnumber").style.display = "block";
//                document.getElementById("cardexpry").style.display = "block";
//                document.getElementById("cvv").style.display = "block";
//                document.getElementById( 'elemtId' ).style.display = 'none';
$("#cardexpry").show();
$("#cvv").show();
$("#cardnumber").show();

            }
            function instHide() {
//                document.getElementById("cardnumber").style.visibility = "hidden";
//                document.getElementById("cardexpry").style.visibility = "hidden";
//                document.getElementById("cvv").style.visibility = "hidden";
//                   document.getElementById("cardnumber").style.display = "none";
//                document.getElementById("cardexpry").style.display = "none"";
//                document.getElementById("cvv").style.display = "none"";
$("#cardexpry").hide();
$("#cvv").hide();
$("#cardnumber").hide();
                
            }

        </script>

</body>
</html>
