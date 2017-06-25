package web.Backend;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

/**
 * @author Daniel Filakovsky
 */

public class UserDAO {

    private static final Logger logger = LoggerFactory
            .getLogger(UserDAO.class);
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }

    public User findByNickname(String name) {
        try {
            String SQL = String.format("SELECT * FROM users WHERE nickname = '%s'", name);
            User user = jdbcTemplateObject.queryForObject(SQL, new UserMapper());
            logger.info("Correct!");
            return user;
        } catch (DataAccessException ex) {
            logger.error(ex.getMessage());
        }
        return null;
    }

    public User verify(String name, String pass) {
        try {
            String SQL = String.format("SELECT * FROM users WHERE nickname = '%s' AND hash = '%s'", name, pass);
            User user = jdbcTemplateObject.queryForObject(SQL, new UserMapper());
            logger.info("Correct!");
            return user;
        } catch (DataAccessException ex) {
            logger.error(ex.getMessage());
        }
            return null;
    }
}
