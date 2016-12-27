package com.zsx.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.zsx.Daos.base.BaseDBFactor;
import com.zsx.beans.UserBean;

/**
 * 用户相关数据操作的实现类
 * @author moram
 *
 */
public class UserDaoImp extends BaseDBFactor<UserBean> {

	@Override
	public boolean insertData(UserBean user) {
		Connection conn=null;
		PreparedStatement stat=null;
		boolean rowCount=false;
		try {
			conn=getConn();
			String sql="insert into t_user(userphone, userpass) value(?,?)";
			stat=conn.prepareStatement(sql);
			//设置值
			stat.setString(1, user.getUserPhone());
			stat.setString(2, user.getUserPass());
			//执行
			rowCount=stat.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(stat, conn);
		}
		return rowCount;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<UserBean> getDataList(Object... obj) {
		int userid=Integer.parseInt(obj[0].toString());
		Connection conn=null;
		List<UserBean> userList=null;
		try {
			conn=getConn();
			QueryRunner qr=new QueryRunner();
			String sql="select * from t_user where userid = ?";
			userList=(List<UserBean>)qr.query(conn,sql,new BeanHandler(UserBean.class),userid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(null, conn);
		}
		return userList;
	}

	@Override
	public boolean updateData(Object... obj) {
		return false;
	}

	@Override
	public boolean deleteData(int id) {
		return false;
	}

}
