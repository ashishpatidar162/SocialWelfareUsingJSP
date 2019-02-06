/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class generateCode {
    
    public static StringBuilder getdistrict() throws SQLException{
       StringBuilder sb=new StringBuilder(" <select class='element select medium' id='district' name='districtname' onchange=loaddistrict(this.value,'s')><option value='' >--select--</option>"); 
        
        String qry="SELECT * FROM district";        
        ResultSet rs=DB.connect.getData(qry);
        while(rs.next()){
           
            sb.append("<option value='").append(rs.getString(1)).append("'>").append(rs.getString(2)).append("</option>");
           
           
        }
        sb.append("</select>");
    return sb;         
        }
    
    public static StringBuilder getdistrict(int s) throws SQLException{
       StringBuilder sb=new StringBuilder("<option value='' >--select--</option>"); 
       String qry = "SELECT districtid,districtname FROM district where stateid="+s;
        System.out.println(qry);
       ResultSet rs=DB.connect.getData(qry);
        while(rs.next()){
           
            sb.append("<option value='").append(rs.getString(1)).append("'>").append(rs.getString(2)).append("</option>");
           
           
        }
        
    return sb;         
        }
    
    
 }
    

