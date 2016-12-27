package com.zsx.utils;

import static com.zsx.utils.LoadDBconfig.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * 数据库操类
 *
 */
public class DBUtil {

	/**
	 * 连接数据库
	 * @return
	 */
	public static Connection getConn(){
		Connection conn=null;
		try {
			//加载驱动
			Class.forName(getDBValue("driverclass"));
			String url=(getDBValue("url"));
			String user=(getDBValue("username"));
			String password=(getDBValue("password"));
			conn=DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 关闭连接
	 * @param rs
	 * @param stat
	 * @param conn
	 */
	public static void closeConn(ResultSet rs,Statement stat,Connection conn){
		try {
			// 关闭 ctrl+shift+F format
			if (rs != null) {
				rs.close();
			}
			if (stat != null) {
				stat.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void closeConn(Statement stat,Connection conn){
		try {
			
			if (stat != null) {
				stat.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
