
package engine;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USER
 */
public final class ConnectDb {
    public static Connection connectNow() throws SQLException, ClassNotFoundException{
        String URL= "jdbc:mysql://localhost:3306/mednow?useSSL=false&serverTimezone=Africa/Lagos";
        String USERNAME = "root";
        String PASSWORD = "password442";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public static boolean report(String f_name, String l_name, String date, String phone, String email, String gender, String address, String city, String state,String symptoms,String sickness,  String current_medication,String id) throws ClassNotFoundException {
        try(Connection db_conn = ConnectDb.connectNow()){
            String sql = "INSERT INTO patient (f_name,l_name,dob,phone,email,gender,address,city,state,symptoms,sickness,id_no,current_medication) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement insertStmt = db_conn.prepareStatement(sql);
            
            insertStmt.setString(1, f_name);
            insertStmt.setString(2, l_name);
            insertStmt.setString(3, date);
            insertStmt.setString(4, phone);
            insertStmt.setString(5, email);
            insertStmt.setString(6, gender);
            insertStmt.setString(7, address);
            insertStmt.setString(8, city);
            insertStmt.setString(9, state);
            insertStmt.setString(10,symptoms);
            insertStmt.setString(11,sickness);
            insertStmt.setString(12, id);
            insertStmt.setString(13, current_medication);
            
            boolean execute = insertStmt.execute();
            if(execute){
                return false;
            }else{
                return true;
            }
            
        }catch(SQLException e){
            Logger.getLogger(ConnectDb.class.getName()).log(Level.SEVERE, null, e);
        }
       return true;
    }
 
    public static String getreport(String sickness) throws ClassNotFoundException {
       try(Connection db_conn=ConnectDb.connectNow()){
          String sql="SELECT * FROM diseases WHERE name=?";
        PreparedStatement stmt=db_conn.prepareStatement(sql);
        stmt.setString(1, sickness);
        ResultSet rs=stmt.executeQuery();
        if(rs.next()){
           String description=rs.getString("discription");
           String prescription=rs.getString("prescription");
           String treatment=rs.getString("treatment");
           return description+"_"+prescription+"_"+treatment;
        }
       }catch(SQLException e){
           Logger.getLogger(ConnectDb.class.getName()).log(Level.SEVERE, null, e);
           return "Error";
       }
       return "";
    }

    
}
