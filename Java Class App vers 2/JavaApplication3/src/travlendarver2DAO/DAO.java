package travlendarver2DAO;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author kivla
 */
public class DAO {
    static Connection connection = null;
    
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travlendar", "root", "");
        } catch (ClassNotFoundException | SQLException ex){
            System.out.println(ex);
        }
        return connection;
    }
    
    protected static void disconnect(){
        try{
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
        } catch (SQLException ex){
            System.out.println(ex);
        }
    }
}
