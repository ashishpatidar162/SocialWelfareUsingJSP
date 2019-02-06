<%-- 
    Document   : getMedicines
    Created on : Oct 4, 2015, 12:25:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int s=Integer.parseInt(request.getParameter("s"));

StringBuilder sb=newpackage.generateCode.getdistrict(s);
out.print(sb);
%>
