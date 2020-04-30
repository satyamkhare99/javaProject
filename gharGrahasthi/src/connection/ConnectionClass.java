package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionClass {

    static String driver = "com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/ghargrahasthi";
    static String uid = "root";
    static String pwd = "root";

    public static Connection getConnection() throws Exception {
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, uid, pwd);
        return con;
    }

    public static void closeConnection(Connection con) {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}

