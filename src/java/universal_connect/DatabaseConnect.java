/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package universal_connect;
import java.sql.*;
/**
 *
 * @author deept
 */
public class DatabaseConnect {
    
    private static final String url="jdbc:mysql://localhost:3306/Bank_Management";
    private static final String user="root";
    private static final String pswd="root";
    static{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
//            System.out.println("connection done");
        }
        catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public static Connection getconnection() throws SQLException{
        return(DriverManager.getConnection(url, user, pswd));
    }
}
