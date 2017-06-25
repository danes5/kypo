package web.Backend;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Author: Daniel Filakovsky
 */
public class UserMapper implements RowMapper<User> {
    @Override
    public User mapRow(ResultSet resultSet, int i) throws SQLException {
        User user = new User(
                resultSet.getString("name"),
                resultSet.getString("hash"),
                resultSet.getString("nickname"),
                resultSet.getString("house"));
        return user;
    }
}
