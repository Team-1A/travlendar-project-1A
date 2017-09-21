/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendara1;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author A-viL
 */
public class User {
    Connection koneksi;
    
    String email;
    String password;
    String username;
    String nama;
    
    public void User(){
        koneksi = DBConnection.getKoneksi("localhost", "3306", "root", "", "travlendar");
        String query = "SELECT * FROM user";
        email = null;
        password = null;
        username = null;
        nama = null;
    }
}
