<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    String username = request.getParameter("username");
 //  out.print(username);
    String parkname = request.getParameter("parkname");

    String parkaddress = request.getParameter("parkaddress");

    String ps = request.getParameter("ps");
    String pd = request.getParameter("pd");
    String city = request.getParameter("city");
    String password = request.getParameter("password");
    String regno = request.getParameter("reg");
    String contactp = request.getParameter("contactp");
    String contactnumber = request.getParameter("contactnumber");
    int r;
    String log = "insert into login(username,password,usertype) values ('" + username + "','" + password + "','ngo')";
    r = DB.connect.insertData(log);
   if (r > 0) {
      
       String sql = "insert into ngoreg(username,ngoname,address,district,city,regno,contactname,contactno) values ('" + username + "','" + parkname + "','" + parkaddress + "','" + pd + "','" + city + "','" + regno + "','" + contactp + "','" + contactnumber + "')";
        r = DB.connect.insertData(sql);
       if (r > 0) {
            response.sendRedirect("index.jsp?msg=regs");
        
        } 
       else {
           String delete = "delete from login where username='" + username + "'";
            DB.connect.insertData(delete);
             response.sendRedirect("failedpage.jsp?msg=regno_already_exist_try_another_regno");
             
        } 
   }
   else{
       response.sendRedirect("failedpage.jsp?msg=email_already_exist_try_another_email");
      
   }
%>