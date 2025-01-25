package Koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/wisata", "root", "");
            } catch (SQLException e) {
                throw new RuntimeException("Database connection failed: " + e.getMessage());
            }
        }
        return connection;
    }
}
