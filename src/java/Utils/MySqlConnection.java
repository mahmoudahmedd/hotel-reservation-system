package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class MySqlConnection
{
    private static final String URL = "jdbc:mysql://localhost:3306/hotel_reservation_system_database?useSSL=false";
    
    private static final String DRIVER = "com.mysql.jdbc.Driver";

    private static final String USERNAME = "";

    private static final String PASSWORD = "";

    private static Connection connection = null;

    public static Connection openConnection() 
    {
        if(connection != null)
        {
            return connection;
        } 
        else 
        {
            try 
            {
                Class.forName(DRIVER);
                connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            }
            catch(ClassNotFoundException _e)
            {
                _e.printStackTrace();
            }
            catch(SQLException _e)
            {
                _e.printStackTrace();
            }
            return connection;
        }
    }
}
