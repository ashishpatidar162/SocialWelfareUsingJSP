
package model.loginmodel;
import java.sql.*;

public class Login
{
  public static String checkLogin(String username,String password)throws Exception
  {
   Connection con=datasource.MyCon.getConnection();
   PreparedStatement ps=con.prepareStatement("select usertype from login where username=? and password=?");
   
   ps.setString(1, username);
   ps.setString(2, password);
   
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
     String s=rs.getString("usertype");
     return s;
   }
   return null;
  }
          
}
