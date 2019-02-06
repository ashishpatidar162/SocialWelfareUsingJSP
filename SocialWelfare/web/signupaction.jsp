

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String firstname = request.getParameter("firstname");

    String lastname = request.getParameter("lastname");

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    String phone = request.getParameter("phone");
   // String type = request.getParameter("utype");
    int r;
    String log = "insert into login(username,password,usertype) values ('" + username + "','" + password + "','user')";
    r = DB.connect.insertData(log);
    if (r > 0) {
        int u;
        String user = "insert into userreg(username,firstname,lastname,gender,contactno) values ('"+username+"','" + firstname + "','" + lastname + "','" + gender + "','" + phone + "')";
     
        u = DB.connect.insertData(user);
        if (u > 0) {
                         response.sendRedirect("regthankpage.jsp");
                  }
        else {
        
                   response.sendRedirect("failedpage.jsp?msg=email_already_exist_try_another_email");
             }
    }
     else {
        
                   response.sendRedirect("failedpage.jsp?msg=email_already_exist_try_another_email");
            
             }
%>