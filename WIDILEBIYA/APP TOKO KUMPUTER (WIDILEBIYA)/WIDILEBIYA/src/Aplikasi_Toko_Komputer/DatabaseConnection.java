package Aplikasi_Toko_Komputer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/toko_komputer"; // Ubah sesuai setting kamu
    private static final String USER = "root"; // Ubah jika bukan root
    private static final String PASSWORD = ""; // Ubah jika pakai password

    public static Connection connect() {
        Connection conn = null;
        try {
            // Load driver MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Koneksi ke database
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Koneksi Berhasil");
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver tidak ditemukan: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("Koneksi Gagal: " + e.getMessage());
        }
        return conn;
    }
}
