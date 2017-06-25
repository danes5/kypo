package web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import web.Backend.Main;
import web.Backend.UserServiceImpl;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;


/**
 * Author: Daniel Filakovsky
 */

@WebListener
public class StartListener implements ServletContextListener {

    final static Logger logger = LoggerFactory.getLogger(StartListener.class);

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        logger.info("init");

        ServletContext servletContext = servletContextEvent.getServletContext();
        DataSource dataSource = Main.getMySQLDataSource();

        servletContext.setAttribute("userService", new UserServiceImpl(dataSource));

        logger.info("manager init");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        logger.info("the end");
    }
}