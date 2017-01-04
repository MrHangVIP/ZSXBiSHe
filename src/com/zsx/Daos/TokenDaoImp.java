package com.zsx.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.zsx.Daos.base.BaseDBFactor;
import com.zsx.beans.TokenBean;
import com.zsx.beans.UserBean;
import com.zsx.utils.DateUtil;

public class TokenDaoImp extends BaseDBFactor<TokenBean> {

	@Override
	public boolean insertData(TokenBean token) {
		Connection conn=null;
		PreparedStatement stat=null;
		 int rowCount=0;
		try {
			conn=getConn();
			String sql="insert into t_token(userphone, token,createtime) value(?,?,?)";
			stat=conn.prepareStatement(sql);
			//设置值
			stat.setString(1, token.getUserPhone());
			stat.setString(2, token.getToken());
			stat.setLong(3, System.currentTimeMillis());
			//执行
			rowCount=stat.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(stat, conn);
		}
		if(rowCount>0){
			return true;
		}
		return false;
	}

	@Override
	public List<TokenBean> getDataList(Object... obj) {
		return null;
	}

	@Override
	public boolean updateData(Object... obj) {
		return false;
	}

	@Override
	public boolean deleteData(int id) {
		return false;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public boolean tokenChecked(String userPhone,String token) {
		Connection conn=null;
		TokenBean tokenBean=null;
		try {
			conn=getConn();
			QueryRunner qr=new QueryRunner();
			String sql="select * from t_token where userphone = ? and token = ?";
			tokenBean=(TokenBean)qr.query(conn,sql,new BeanHandler(TokenBean.class),userPhone,token);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(null, conn);
		}
		if(tokenBean==null){
			return false;
		}
		return true;
	}



}
