package com.lanqiao.guimei.listener;


import com.lanqiao.guimei.commons.CustomDateTimeConverter;
import org.apache.commons.beanutils.ConvertUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class DateConverterListener implements ServletContextListener{

    // Public constructor is required by servlet spec
    public DateConverterListener() {
    }

    // -------------------------------------------------------
    // ServletContextListener implementation
    // -------------------------------------------------------
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        CustomDateTimeConverter dateTimeConverter = new CustomDateTimeConverter();
        ConvertUtils.register(dateTimeConverter, java.util.Date.class);
        ConvertUtils.register(dateTimeConverter, java.sql.Date.class);
    }
@Override
    public void contextDestroyed(ServletContextEvent sce) {
      /* This method is invoked when the Servlet Context 
         (the Web application) is undeployed or 
         Application Server shuts down.
      */
    }
}
