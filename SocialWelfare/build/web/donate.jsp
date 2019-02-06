<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
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
                    <a href="#" class="navbar-brand"><b><%=ulevel%></b></a>
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
                         <li ><a href="home.jsp" class="smoothScroll"><%= name%></a></li>
                         <li ><a href="logout.jsp" class="smoothScroll">Logout</a></li> 
                    </ul>
                     <ul class="nav navbar-nav navbar-right">
                         <!--<div align="right"><%= name%><a href="home.jsp">&nbsp;&nbsp;HOME</a>&nbsp;&nbsp;<a href="logout.jsp">LOGOUT</a></div>--> 
                       <p> <a href="javascript:void(0);" class="section-btn pricing-btn">Donate</a> </p>
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









<html>

<head>

<style>

.buttonss {

    background-color: #4CAF50; 

    border: none;

    color: white;

    padding: 15px 32px;

    text-align: center;

    text-decoration: none;

    display: inline-block;

    font-size: 20px;

    margin: 4px 2px;

    margin-left: 220px;

}

?

.button11 {

    background-color: white; 

    color: black; 

    border: 2px solid #4CAF50;

}

?

.button211 {

    background-color: white; 

    color: black; 

    border: 2px solid #008CBA;

}

?

.button311 {

    background-color: white; 

    color: black; 

    border: 2px solid #f44336;

}

?

?

</style>

</head>

<body>

?

?<h1 align=center> Donation Category</h1>
<br><br><br><br><br><br><br><br>
?
<a href="fooddonate.jsp">
<button class="buttonss button11">Food</button></a>

<a href="money.jsp">
<button class="buttonss button211">Money</button></a>


<a href="cloth.jsp">
<button class="buttonss button311">Clothes</button></a>




</body>

</html>







<br><br><br><br><br><br><br><br><br><br>

                  

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
