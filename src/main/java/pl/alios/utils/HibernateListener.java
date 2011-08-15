package pl.alios.utils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class HibernateListener implements ServletContextListener {
 
	  public void contextInitialized(ServletContextEvent evt) {
	  }

	  public void contextDestroyed(ServletContextEvent evt) {
	    HibernateUtil.getInstance().closeEntityManagerFactory();
	  }

}