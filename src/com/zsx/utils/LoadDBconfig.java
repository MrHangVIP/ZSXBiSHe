package com.zsx.utils;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Properties;
/**
 * 加载配置
 * @author quanmin
 *
 */
public class LoadDBconfig {

	//存储配置文件中的值
	private static HashMap<String,String> dbMap=new HashMap<String,String>();
		
	public static String getDBValue(String name){
		return dbMap.get(name);
	}
	public static void load(String path){
		try {
			//加载配置dbconfig.properties
			Properties pro=new Properties();
			//加载文件
			pro.load(new FileInputStream(path));
			//取值
			String driverclass=pro.getProperty("driverclass");
			dbMap.put("driverclass", driverclass);
			String url=pro.getProperty("url");
			dbMap.put("url", url);
			String username=pro.getProperty("username");
			dbMap.put("username", username);
			String password=pro.getProperty("password");
			dbMap.put("password", password);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
