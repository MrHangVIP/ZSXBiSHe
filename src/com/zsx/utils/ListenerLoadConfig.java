package com.zsx.utils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 监听上下文加载配置
 *
 */
public class ListenerLoadConfig implements ServletContextListener {

	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		String path=event.getServletContext().getRealPath("/WEB-INF/config/dbconfig.properties");
		LoadDBconfig.load(path);
		System.out.println(DBUtil.getConn());
	}
}
