
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%

HttpSession session=request.getSession(false);
 session.invalidate();
 response.sendRedirect("index.jsp");
 return;
%>