package com.zsx.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zsx.Daos.base.BaseDBFactor;
import com.zsx.beans.TokenBean;

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
		Connection conn=null;
		PreparedStatement stat=null;
		 int rowCount=0;
		try {
			conn=getConn();
			String sql="update t_token set token = ? and createtime = ? where userphone = ? ";
			stat=conn.prepareStatement(sql);
			//设置值
			stat.setString(1, (String)obj[0]);
			stat.setString(2,(String)obj[1]);
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
	public boolean deleteData(int id) {
		Connection conn=null;
		PreparedStatement stat=null;
		 int rowCount=0;
		try {
			conn=getConn();
			String sql="delete  from t_token where id = ?";
			stat=conn.prepareStatement(sql);
			//设置值
			stat.setInt(1, id);
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
	
	public boolean deleteData(String userPhone) {
		Connection conn=null;
		PreparedStatement stat=null;
		 int rowCount=0;
		try {
			conn=getConn();
			String sql="delete from t_token where userphone = ?";
			stat=conn.prepareStatement(sql);
			//设置值
			stat.setString(1, userPhone);
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
	
	/**
	 * 获取无效token
	 * @param time 超时时间长整型(ms)
	 * @return
	 */
	public List<TokenBean> getAbandonedList(long time) {
		Connection conn=null;
		List<TokenBean> tokenList=null;
		try {
			long curTime=System.currentTimeMillis();
			conn=getConn();
			QueryRunner qr=new QueryRunner();
			
			String sql="select * from t_token where createtime <= ?";
			tokenList=(List<TokenBean>)qr.query(conn,sql,new BeanListHandler(TokenBean.class),curTime-time);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(null, conn);
		}
		return tokenList;
	}

}
