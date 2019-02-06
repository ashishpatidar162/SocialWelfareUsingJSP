
<%@page import="java.sql.ResultSet"%>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%  
       
        
        String sql = "select * from userreg";
        ResultSet rs = DB.connect.getData(sql);
       rs.next();
        
        String sql9 = "select * from ngoreg";
        ResultSet rs1 = DB.connect.getData(sql9);
        
       
        
        String sql10 = "select * from cloth";
        ResultSet rs10 = DB.connect.getData(sql10);
        
        String sql11 = "select * from food"; 
        ResultSet rs11 = DB.connect.getData(sql11);
        rs11.next();
        
         String sql12 = "select * from offlinepay";
        ResultSet rs12 = DB.connect.getData(sql12);
        rs.next();
        
        String sql4 = "select * from onlinepay";
        ResultSet rs14 = DB.connect.getData(sql4);
        rs.next();
        
         String sql5 = "select * from ngocloth";
        ResultSet rs15 = DB.connect.getData(sql5);
        rs.next();
        
         String sql6 = "select * from ngofood";
        ResultSet rs16 = DB.connect.getData(sql6);
        rs.next();
        
         String sql7 = "select * from ngoofflinepay";
        ResultSet rs17 = DB.connect.getData(sql7);
        rs.next();
        
         String sql8 = "select * from ngoonlinepay";
        ResultSet rs18 = DB.connect.getData(sql8);
        rs.next();
        
        
    %>
                                        <!--<h1 align=center> NGO Detail</h1>-->
                            
         <div class="collapse navbar-collapse">
                   
                     <ul class="nav navbar-nav navbar-right">
                         <p style="margin-right:150px;margin-top:80px;font-size:20px"> <a href="index.jsp" class="section-btn pricing-btn"><b><u>Logout</b></u></a> </p>
                    </ul>
               </div>                                 
<div class="container">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">                                    
                                    
            
                                    
                                    
                    <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab" aria-expanded="true">NGO</a>
                                </li>
                                <li class=""><a href="#profile" data-toggle="tab" aria-expanded="false">Users</a>
                                </li>
                                <li class=""><a href="#messages" data-toggle="tab" aria-expanded="false">UserFood</a>
                                </li>
                                <li class=""><a href="#settings1" data-toggle="tab" aria-expanded="false">UserCloth</a>
                                </li>
                                 <li class=""><a href="#settings2" data-toggle="tab" aria-expanded="false">UserOfflinePay</a>
                                </li>
                                 <li class=""><a href="#settings3" data-toggle="tab" aria-expanded="false">UserOnlinePay</a>
                                </li>
                                 <li class=""><a href="#settings4" data-toggle="tab" aria-expanded="false">NgoFood</a>
                                </li>
                                <li class=""><a href="#settings5" data-toggle="tab" aria-expanded="false">NgoCloth</a>
                                </li>
                                <li class=""><a href="#settings6" data-toggle="tab" aria-expanded="false">NgoOfflinePay</a>
                                </li>
                                <li class=""><a href="#settings7" data-toggle="tab" aria-expanded="false">NgoOnlinePay</a>
                                </li>
                                
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="home">
                                    <h4>Ngo Details</h4>
                                    <div class="panel panel-primary">
                <div class="panel-heading">NGO Details</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>
                                            Username
                                        </th>
                                        <th>
                                            Ngo Name
                                        </th>
                                        <th>
                                            City
                                        </th>
                                       <th>
                                          Registration no.
                                        </th>
                                        <th>
                                           contact name
                                        </th>
                                        <th>
                                            contact number
                                        </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% 
                                    rs1.beforeFirst();
                                    while (rs1.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs1.getString("username")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                      
                                        <td>
                                            <%=rs1.getString("ngoname")%>
                                        </td>
                                        <td>
                                            <%=rs1.getString("city")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                         <td>
                                            <%=rs1.getString("regno")%>
                                        </td>
                                         <td>
                                            <%=rs1.getString("contactname")%>
                                        </td>
                                        <td>
                                            <%=rs1.getString("contactno")%>
                                        </td>
                                    </tr>
  <%}%>
                                    </tbody>
                                </table>
                            </div>
                                    </div></div>
                                </div>
                                <div class="tab-pane fade" id="profile">
                                    <h4>Users Details</h4>
                                    <div class="panel panel-primary">
                <div class="panel-heading">Users Details</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                             First Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </th>
                                        <th>
                                            Last Name
                                        </th>
                                       <th>
                                          gender
                                        </th>
                                        <th>
                                           contact
                                        </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs.beforeFirst();
                                    while (rs.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs.getString("username")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                      
                                        <td>
                                            <%=rs.getString("firstname")%>
                                        </td>
                                        <td>
                                            <%=rs.getString("lastname")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                         <td>
                                            <%=rs.getString("gender")%>
                                        </td>
                                         <td>
                                            <%=rs.getString("contactno")%>
                                        </td>
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div>
                                </div>
                                <div class="tab-pane fade" id="messages">
                                    <h4>User Food</h4>
                                        <div class="panel panel-primary">
                <div class="panel-heading">Users Food</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                             Quantity 
                                        </th>
                                        <th>
                                              paymode
                                        </th>
                                       <th>
                                              message
                                        </th>
                                         <th>
                                              catogary
                                        </th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs11.beforeFirst();
                                    while (rs11.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs11.getString("username")%>
                                        </td>
                                      
                                        <td>
                                            <%=rs11.getString("quantity")%>
                                        </td>
                                        <td>
                                            <%=rs11.getString("paymode")%>
                                        </td>
                                         <td>
                                            <%=rs11.getString("msg")%>
                                        </td>
                                         <td>
                                            <%=rs11.getString("catogary")%>
                                        </td>
                                         
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div></div>
                                    
                                <div class="tab-pane fade" id="settings1">
                                    <h5>User Cloth</h5>
                                        <div class="panel panel-primary">
                <div class="panel-heading">Users Cloth</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                             Quantity 
                                        </th>
                                        <th>
                                              paymode
                                        </th>
                                       <th>
                                              message
                                        </th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs10.beforeFirst();
                                    while (rs10.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs10.getString("username")%>
                                        </td>
                                      
                                        <td>
                                            <%=rs10.getString("quantity")%>
                                        </td>
                                        <td>
                                            <%=rs10.getString("paymode")%>
                                        </td>
                                         <td>
                                            <%=rs10.getString("msg")%>
                                        </td>
                                         
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div></div>
                                
                                
                                <div class="tab-pane fade" id="settings2">
                                     <h6>User Offline Pay</h6>
                                        <div class="panel panel-primary">
                <div class="panel-heading">Users Offline Pay</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                             Amount 
                                        </th>
                                      
                                       <th>
                                              message
                                        </th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs12.beforeFirst();
                                    while (rs12.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs12.getString("username")%>
                                        </td>
                                      
                                        <td>
                                            <%=rs12.getString("amount")%>
                                        </td>
                                       
                                         <td>
                                            <%=rs12.getString("message")%>
                                        </td>
                                         
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div> </div>
                                    
                                    
                                <div class="tab-pane fade" id="settings3">
                                         <h6>User Online Pay</h6>
                                        <div class="panel panel-primary">
                <div class="panel-heading">Users Online Pay</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                            Card_no
                                        </th>
                                      
                                       <th>
                                            Amount
                                        </th>
                                        
                                        <th>
                                            CVV
                                        </th>
                                      
                                        <th>
                                            CardExpry
                                        </th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs14.beforeFirst();
                                    while (rs14.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs14.getString("username")%>
                                        </td>
                                      
                                        <td>
                                            <%=rs14.getString("card_no")%>
                                        </td>
                                       
                                         <td>
                                            <%=rs14.getString("amount")%>
                                        </td>
                                        
                                         <td>
                                            <%=rs14.getString("cvv")%>
                                        </td>
                                        
                                        <td>
                                            <%=rs14.getString("cardexpry")%>
                                        </td>
                                         
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div> </div>
                                    
                                    
                                 
                          
                                  <div class="tab-pane fade" id="settings4">
                                        <h4>NGO Food Request</h4>
                                        <div class="panel panel-primary">
                <div class="panel-heading">NGO Food Request</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                             Quantity 
                                        </th>
                                        <th>
                                              paymode
                                        </th>
                                       <th>
                                              message
                                        </th>
                                      <th>
                                              catogary
                                        </th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs16.beforeFirst();
                                    while (rs16.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs16.getString("username")%>
                                        </td>
                                      
                                        <td>
                                            <%=rs16.getString("quantity")%>
                                        </td>
                                        <td>
                                            <%=rs16.getString("paymode")%>
                                        </td>
                                         <td>
                                            <%=rs16.getString("msg")%>
                                        </td>
                                          <td>
                                            <%=rs16.getString("catogary")%>
                                        </td>
                                         
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div> </div>    
                          
                                    
                                  <div class="tab-pane fade" id="settings5">
                                      <h5>Ngo Cloth Request</h5>
                                        <div class="panel panel-primary">
                <div class="panel-heading">Users Cloth Request</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                             Quantity 
                                        </th>
                                        <th>
                                              paymode
                                        </th>
                                       <th>
                                              message
                                        </th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs15.beforeFirst();
                                    while (rs15.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs15.getString("username")%>
                                        </td>
                                      
                                        <td>
                                            <%=rs15.getString("quantity")%>
                                        </td>
                                        <td>
                                            <%=rs15.getString("paymode")%>
                                        </td>
                                         <td>
                                            <%=rs15.getString("msg")%>
                                        </td>
                                         
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div> </div> 
                                    
                                 <div class="tab-pane fade" id="settings6">
                                         <h6>NGO Offline pay Request</h6>
                                        <div class="panel panel-primary">
                <div class="panel-heading">NGO Offline Pay Request</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                             Amount 
                                        </th>
                                      
                                       <th>
                                              message
                                        </th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs17.beforeFirst();
                                    while (rs17.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs17.getString("username")%>
                                        </td>
                                      
                                        <td>
                                            <%=rs17.getString("amount")%>
                                        </td>
                                       
                                         <td>
                                            <%=rs17.getString("message")%>
                                        </td>
                                         
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div> </div> 
                                    
                                    
                                 <div class="tab-pane fade" id="settings7">
                                      <h6>Ngo Online Pay Request</h6>
                                        <div class="panel panel-primary">
                <div class="panel-heading">Ngo Online Pay Request</div>
                <div class="panel-body">
<div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <th>
                                            Username
                                        </th>
                                        <th>
                                            Card_no
                                        </th>
                                      
                                       <th>
                                            Amount
                                        </th>
                                        
                                        <th>
                                            CVV
                                        </th>
                                      
                                        <th>
                                            CardExpry
                                        </th>
                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <% 
                                    rs18.beforeFirst();
                                    while (rs18.next()) {%> 
                                    <tr>

                                        <td>
                                            <%=rs18.getString("username")%>
                                        </td>
                                      
                                        <td>
                                            <%=rs18.getString("card_no")%>
                                        </td>
                                       
                                         <td>
                                            <%=rs18.getString("amount")%>
                                        </td>
                                        
                                         <td>
                                            <%=rs18.getString("cvv")%>
                                        </td>
                                        
                                        <td>
                                            <%=rs18.getString("cardexpry")%>
                                        </td>
                                         
                                       
                                    </tr>
  <%}%> 
                                    </tbody>
                                </table>
                            </div>
                                    </div></div>  </div> 
                                    
                                    
                                 <div class="tab-pane fade" id="settings4">
                                    <h4>Settings Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>     
                              
                             
                            </div>
                        </div>                                                   

                            
                          </div></div>
        </body></html>               