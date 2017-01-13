package com.zsx.utils;

import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.zsx.Daos.TokenDaoImp;
import com.zsx.beans.TokenBean;

/**
 * 监听上下文加载配置
 *
 */
public class ListenerLoadConfig implements ServletContextListener {

	public static final long TOKEN_CHECKED_TIME=24*60*60*1000;
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		String path=event.getServletContext().getRealPath("/WEB-INF/config/dbconfig.properties");
		LoadDBconfig.load(path);
		System.out.println(DBUtil.getConn());
		
		new Timer().schedule(new TimerTask() {
			
			@Override
			public void run() {
				System.out.println("getAbandonedList");
				TokenDaoImp tokenDao=new TokenDaoImp();
				List<TokenBean> abandonedList= tokenDao.getAbandonedList(TOKEN_CHECKED_TIME);
				if(abandonedList!=null){
					for(TokenBean tokenBean:abandonedList){
						tokenDao.deleteData(tokenBean.getId());
					}
				}
			}
		}, 1000,TOKEN_CHECKED_TIME);
	}
}
