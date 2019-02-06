<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String ulevel=session.getAttribute("ulevel").toString();
String username=session.getAttribute("uname").toString();

   // String username = request.getParameter("username");
 //  out.print(username);
 //   String person = request.getParameter("person");
    // out.print(person);
    String quantity = request.getParameter("quantity");
  //  out.print(quantity);
     String paymode= request.getParameter("paymode");
     out.print(paymode);   
     String msg = request.getParameter("msg");
    int r;
    String log = "insert into cloth(username,quantity,paymode,msg)values ('" + username + "','" + quantity + "','" + paymode + "','" + msg + "')";
    r = DB.connect.insertData(log);
   if (r > 0) {
      
       response.sendRedirect("donatethank.jsp?msg=regs");
        } 
   else{
    //   out.print(quantity);
       response.sendRedirect("failedpage.jsp?msg=email_already_exist_try_another_email");
       }
%>