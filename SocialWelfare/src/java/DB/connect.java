/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class connect {
    static Connection con;
    static Statement st;
    static ResultSet rs;
    
    static String db_url="jdbc:mysql://localhost:3306/socialwelfare";
    
    
    public static void setConnection()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(db_url, "root" , "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    public static int insertData(String sql)
    {
        int result=0;
        try {
            setConnection();
            st=con.createStatement();
            result = st.executeUpdate(sql);
            closeConnection();
        } catch (SQLException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
        
    }
    public static ResultSet getData(String sql)
    {
        
        
        try {
            setConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
           
        } catch (SQLException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return (rs==null? null: rs);
       
    }
    
    public static void closeConnection(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    
    }
    