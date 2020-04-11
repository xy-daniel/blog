package cn.cwyuan.blog.listener

import org.apache.commons.logging.Log
import org.apache.commons.logging.LogFactory

import javax.servlet.ServletContextEvent
import javax.servlet.ServletContextListener
import java.sql.Driver
import java.sql.DriverManager
import java.sql.SQLException

/**
 * Created by daniel on 2020/04/07.
 */
class HttpServletContextListener implements ServletContextListener{
    private static final Log log = LogFactory.getLog(HttpServletContextListener.class);

    @Override
    void contextInitialized(ServletContextEvent servletContextEvent) {

    }

    @Override
    void contextDestroyed(ServletContextEvent servletContextEvent) {
        Enumeration<Driver> drivers = DriverManager.getDrivers()
        while (drivers.hasMoreElements()) {
            Driver driver = drivers.nextElement()
            try {
                DriverManager.deregisterDriver(driver)
                log.info(String.format("deregistering jdbc driver: %s", driver))
            } catch (SQLException e) {
                log.error(String.format("Error deregistering driver %s", driver), e)
            }

        }
    }
}
