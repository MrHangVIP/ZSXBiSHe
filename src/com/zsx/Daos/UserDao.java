package com.zsx.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.zsx.beans.UserBean;
import com.zsx.utils.DBUtil;
import com.zsx.utils.JsonHelp;

/**
 * 用户Dao层
 *
 */
public class UserDao extends DBUtil {

	/**
	 * 通过用户名密码找到用户
	 * @param userName
	 * @param userPass
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<UserBean> findOne(String userName,String userPassWord){
		Connection conn=null;
		List<UserBean> userList=null;
		try {
			conn=getConn();
			QueryRunner qr=new QueryRunner();
			String sql="select *from t_user where username = ? and password = ? ";
			userList=(List<UserBean>)qr.query(conn,sql,new BeanHandler(UserBean.class),userName,userPassWord);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(null, conn);
		}
		return userList;
	}
	
	public String getUserList(String name){
		Connection conn=null;
		PreparedStatement stat=null;
		ResultSet rs=null;
		String backStr=null;
		try{
			conn=getConn();
			String sql="select *from t_user where username = ?";
			stat=conn.prepareStatement(sql);
			//设置值
			stat.setString(1, name);
			rs=stat.executeQuery();
			backStr=JsonHelp.resultSetToJson(rs);
		}
		catch(Exception e){
			e.printStackTrace();
		}finally{
			closeConn(stat, conn);
		}
		return backStr;
	}
	
	
	
	/**
	 * 增加一个对象
	 */
	public int addOne(UserBean user){
		Connection conn=null;
		PreparedStatement stat=null;
		int rowCount=0;
		try {
			conn=getConn();
			String sql="insert into t_user(username, password, age) value(?,?,?)";
			stat=conn.prepareStatement(sql);
			//设置值
			stat.setString(1, user.getUserPhone());
			stat.setString(2, user.getUserPass());
			stat.setInt(3, user.getAge());
			//执行
			rowCount=stat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(stat, conn);
		}
		return rowCount;
	}

}
