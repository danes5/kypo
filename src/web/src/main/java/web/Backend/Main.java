package web.Backend;

import com.mysql.cj.jdbc.MysqlDataSource;

import javax.sql.DataSource;
import java.util.Properties;

/**
 * @author Daniel Filakovsky
 */
public class Main {

    public static DataSource getMySQLDataSource() {
        Properties props = new Properties();
        props.setProperty("serverTimezone", "UTC");
        props.setProperty("driver", "com.mysql.jdbc.Driver");
        props.setProperty("useUnicode", "yes");
        props.setProperty("characterEncoding", "utf8");
        props.setProperty("useSSL", "false");

        MysqlDataSource mysqlDS = new MysqlDataSource();
        mysqlDS.setURL("jdbc:mysql://localhost:3306/KYPO");
        mysqlDS.setUser("root");
        mysqlDS.setPassword("kypo");
        mysqlDS.initializeProperties(props);
        return mysqlDS;
    }
}
