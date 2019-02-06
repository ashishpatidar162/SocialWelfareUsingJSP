

package datasource;

import java.sql.DriverManager;
import java.sql.Connection;

public class MyCon
{
  
 volatile static private Connection con=null;
 
 
private MyCon()
{}
static
{
  try 
 {
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/socialwelfare","root","");

 }
  catch(Exception e)
  {
   e.printStackTrace();   
  }
  
}
public static Connection getConnection()throws Exception
{
  if(con.isClosed())
  {
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/socialwelfare","root","");
    
  }
  return con;
}
}
