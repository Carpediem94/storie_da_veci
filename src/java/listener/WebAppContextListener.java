/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listener;

//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;
import db.DBManager;
import java.sql.SQLException;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**

 * Web application lifecycle listener.

 */

public class WebAppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        String dburl = sce.getServletContext().getInitParameter("dburl");

        try {
            DBManager manager = new DBManager(dburl);

            sce.getServletContext().setAttribute("dbmanager", manager);

        } catch (SQLException ex) {

            Logger.getLogger(getClass().getName()).severe(ex.toString());

            throw new RuntimeException(ex);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Il database Derby deve essere "spento" tentando di connettersi al database con shutdown=true        
        DBManager.shutdown();
    }
}


