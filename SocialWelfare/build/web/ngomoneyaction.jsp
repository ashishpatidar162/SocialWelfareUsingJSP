<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

   
   String ulevel=session.getAttribute("ulevel").toString();
String username=session.getAttribute("uname").toString();

 //String username = request.getParameter("username");

String paymode = request.getParameter("paymode");
    String amount = request.getParameter("amount");
    String msg = request.getParameter("msg");
     String cardnumber = request.getParameter("cardnumber");
      String cardexpry= request.getParameter("cardexpry");
       String cvv= request.getParameter("cvv");
    int r;
  
        if (paymode.equals("offline")) {
            String log = "insert into ngoofflinepay(username,amount,message) values ('" + username + "','" + amount + "','" + msg + "')";
             r = DB.connect.insertData(log);
             if(r>0)
             {    
            response.sendRedirect("thanksrequist.jsp?msg=regs");
             }
        } else if (paymode.equals("online")) {
             String log = "insert into ngoonlinepay(username,card_no,amount,cvv,cardexpry) values ('" + username + "','" + cardnumber + "','" + amount + "','" + cvv + "','" + cardexpry + "')";
             r = DB.connect.insertData(log);
             if(r>0)
             {  
            response.sendRedirect("thanksrequist.jsp?msg=regs");   
             }
        } else  {
            response.sendRedirect("failedpage.jsp");
        }
    
%>