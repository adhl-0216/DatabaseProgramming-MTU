import javax.swing.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class MusicManager {
    private final String driverClass = "oracle.jdbc.driver.OracleDriver";
    private Connection connection = null;
    private final String url = "jdbc:oracle:thin:@studentoracle.students.ittralee.ie:1521:orcl";
    private  String username = "T00229173"; // your username
    private final String password = "4fucuwhvM?v6"; //your password

    public MusicManager(){
    }

    private void setConnection() {
        try {
            Class.forName(driverClass).getDeclaredConstructor().newInstance();
            connection = DriverManager.getConnection(url, username, password);
            System.out.println(connection);
        } catch (Exception ex) {
            System.err.println("Exception:"+ ex.getMessage());
            ex.printStackTrace();
        }

    }
    private Connection getConnection() {
        if (connection == null) {
            setConnection();
        }
        return connection;
    }

    public static void main(String[] args) {
        MusicManager musicManager = new MusicManager();
        musicManager.setConnection();
        String insertSql = "INSERT INTO ALBUMS VALUES (5, 'The Search','NF')";
        musicManager.persistAlbum(insertSql);
    }

    private void persistAlbum(String sql) {
        try {
            Statement st = getConnection().createStatement();
            // Execute the statement
            st.executeUpdate(sql);
            System.out.println("Album persisted successfully!");
        } catch (java.sql.SQLException ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
    }
}
