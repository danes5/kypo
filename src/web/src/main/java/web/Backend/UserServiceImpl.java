package web.Backend;

import javax.sql.DataSource;

/**
 * @author Daniel Filakovsky
 */
public class UserServiceImpl {

    private UserDAO userDAO = new UserDAO();

    public UserServiceImpl(DataSource dataSource) {
        userDAO.setDataSource(dataSource);
    }

    private void checkDataSource() {
        if (userDAO == null) {
            throw new IllegalStateException("DataSource is not set");
        }
    }

    public User findByNickname(String name) {
        checkDataSource();
        if (name != null)
            return userDAO.findByNickname(name);
        return null;
    }

    public User verify(String name, String hash) {
        checkDataSource();
        return userDAO.verify(name, hash);
    }
}
