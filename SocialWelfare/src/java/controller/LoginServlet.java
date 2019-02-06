
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
             String unm=request.getParameter("username");
              String pass=request.getParameter("password");
              String level=model.loginmodel.Login.checkLogin(unm, pass);
              // out.print("invalid user....."+level);
              if(level!=null)
              {
              out.print("valid user......"+level);
                  
              HttpSession session=request.getSession();
              session.setAttribute("uname",unm);
              session.setAttribute("ulevel",level);
              
               if(level.equals("ngo"))
              {
              response.sendRedirect("ngohome.jsp?");
             // out.print("invalid user....."+level);
              }
        else if (level.equals("user"))
              {
               //out.print("invalid user....."+level);
               response.sendRedirect("donate.jsp");   
              }
        else if(level.equals("admin"))
              {
                 response.sendRedirect("admin.jsp"); 
              }
              }
              else
              {
                 response.sendRedirect("failedpage.jsp"); 
              }
            }
        catch(Exception e)
        {
         e.printStackTrace();
        }
        finally
        {            
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }
 }
