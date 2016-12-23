package com.blog.util;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

public class HibernateUtil {
	private static String CONFIG_FILE_LOCATION="/config/hibernate.cfg.xml";
	private static final ThreadLocal threadLocal = new ThreadLocal();
    private static Configuration configuration = new Configuration();
    private static SessionFactory sessionFactory;
    private static String configFile = CONFIG_FILE_LOCATION;
    
    private HibernateUtil(){
    	
    }
    
    public static Session getCurrentSession() throws HibernateException
    {
        Session session = (Session) threadLocal.get();

        if (session == null || !session.isOpen())
        {
            if (sessionFactory == null)
            {
                rebuildSessionFactory();
            }
            session = (sessionFactory != null) ? sessionFactory.openSession()
                    : null;
            threadLocal.set(session);
        }

        return session;
    }
    
    public static void rebuildSessionFactory()
    {
        try
        {
            configuration.configure(configFile);
            sessionFactory = configuration.buildSessionFactory();
        } catch (Exception e)
        {
            System.err.println("%%%% Error Creating SessionFactory %%%%");
            e.printStackTrace();
        }
    }
    
    public static void closeCurrentSession() throws HibernateException
    {
        Session session = (Session) threadLocal.get();
        threadLocal.set(null);

        if (session != null)
        {
            session.close();
        }
    }
    
    
    public static SessionFactory getSessionFactory()
    {
        return sessionFactory;
    }
    
    
    public static void setConfigFile(String configFile)
    {
        HibernateUtil.configFile = configFile;
        sessionFactory = null;
    }
    
    
    public static Configuration getConfiguration()
    {
        return configuration;
    }

}
