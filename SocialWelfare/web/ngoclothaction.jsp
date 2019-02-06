<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
//String username = request.getParameter("username");
  String ulevel=session.getAttribute("ulevel").toString();
String username=session.getAttribute("uname").toString();

String quantity = request.getParameter("quantity");
    out.print(quantity);
     String paymode= request.getParameter("paymode");
     out.print(paymode);   
     String msg = request.getParameter("msg");
    int r;
    String log = "insert into ngocloth(username,quantity,paymode,msg)values ('" + username + "','" + quantity + "','" + paymode + "','" + msg + "')";
    r = DB.connect.insertData(log);
   if (r > 0) {
      
       response.sendRedirect("thanksrequist.jsp?msg=regs");
        } 
   else{
       response.sendRedirect("failedpage.jsp?msg=email_already_exist_try_another_email");
       }
%>