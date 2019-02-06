

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String cemail= request.getParameter("cemail");

    String message = request.getParameter("message");
    
   
   // String type = request.getParameter("utype");
    int r;
    String log = "insert into contact(email,message)values('" + cemail + "','" + message + "')";
    r = DB.connect.insertData(log);
    if (r > 0) {
        
                   response.sendRedirect("regthankpage.jsp");
             
    }
     else {
           // out.print(message);
           // out.print(cemail);
                   response.sendRedirect("failedpage.jsp");
            
             }
%>