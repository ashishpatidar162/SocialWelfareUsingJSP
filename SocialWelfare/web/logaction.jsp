<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    String qry = null;
    qry = "select usertype from login where username='" + username + "' AND password='" + password + "'";
    ResultSet rs = DB.connect.getData(qry);
    String usertype = new String();
    if (rs.next()) {
        session.setAttribute("user", username);
        usertype = rs.getString(1);
        if (usertype.equals("ngo")) {
            response.sendRedirect("ngohome.jsp");
        } else if (usertype.equals("ind")) {
            response.sendRedirect("donate.jsp");
        } else if (usertype.equals("admin")) {
            response.sendRedirect("admin.jsp");
        }
    } else {
        response.sendRedirect("failedpage.jsp?msg=logf");
    }

%>