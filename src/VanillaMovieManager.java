import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Created by t00036478 on 01/02/2018.
 */
public class VanillaMovieManager {
    private final String driverClass = "oracle.jdbc.driver.OracleDriver";
    private  Connection connection = null;
    private final String url = "jdbc:oracle:thin:@studentoracle.students.ittralee.ie:1521:orcl";
    private  String username = "T00229173"; // your username
    private final String password = "4fucuwhvM?v6"; //your password

    public VanillaMovieManager(){
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

    public static void main(String[] args){
        VanillaMovieManager manager = new VanillaMovieManager();
        manager.setConnection();
        manager.persistMovie(manager.insertSql);
    }

    private String insertSql = "INSERT INTO MOVIES VALUES (3, 'Michael Collins','Neil Jordan', 'Irish civil war')";
    private String selectSql = "SELECT * FROM MOVIES";
    private void persistMovie(String sql) {
        try {
            Statement st = getConnection().createStatement();
            // Execute the statement
            st.executeUpdate(sql);
            System.out.println("Movie persisted successfully!");
        } catch (java.sql.SQLException ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
    }
}

