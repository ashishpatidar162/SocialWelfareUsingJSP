<!DOCTYPE html>
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
		<form id="form_27981" class="appnitro"  method="post" action="ngofoodaction.jsp">
					<div class="form_description">
			<h2>Food Request</h2>
			<p></p>
		</div>						
			<ul >
            	</li>
                 	<li id="li_2" >
		<label class="description" for="element_2">Request The Catagory Of Food</label>
		<span>
			<input id="element_3_1" name="catogary" class="element radio" type="radio" value="RawFood" />
<label class="choice" for="element_3_1">Raw Food</label>
<input id="element_3_1" name="catogary" class="element radio" type="radio" value="CookedFood" />
<label class="choice" for="element_3_1">Cooked Food</label>		</li>	
                
                <li id="li_1" >
		<label class="description" for="element_1">Enter The Quantity In Kg. </label>
		<div>
                    <input id="element_1" name="quantity" class="element text medium" type="number" maxlength="255" required /> 
		</div> 
		</li>		<li id="li_3" >
		<label class="description" for="element_3"> Mode </label>
		<span>
                    <input id="element_3_1" name="paymode" class="element radio" type="radio" value="offline" required />
<label class="choice" for="element_3_1">Offline </label>



</li>		<li id="li_1" >
		<label class="description" for="element_1">Refrence Address - 21, Vesveswaraiya Marg Lantern Square, Indore, Madhya Pradesh</label>
		</li>
			
		</span> 
</li>		<li id="li_1" >
		<label class="description" for="element_1">Your Msg</label>
		</li>
			<div>
                            <input id="element_1" name="msg" class="element text medium" type="text" maxlength="100" value="" required/> 
		</div> <br>
<!--					<li class="buttons">
			    <input type="hidden" name="form_id" value="27981" />
			    
				<input id="saveForm" class="button_text" type="submit" name="submit" value="Make Donation" />
		</li>-->
<div>
                     <button type="submit" name="submit" class="btn btn-block btn-primary" >Request</button>
</div>
			</ul>
		</form>	
		
	</div>
	<img id="bottom" src="images/bottom.png" alt="">
	</body>
</html>





                  

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

</body>
</html>
