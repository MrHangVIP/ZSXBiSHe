package com.zsx.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zsx.Daos.base.BaseDBFactor;
import com.zsx.beans.PostBarItem;
import com.zsx.utils.DateUtil;

public class PostBarDaoImpl extends BaseDBFactor<PostBarItem> {

	@Override
	public boolean insertData(PostBarItem t) {
		Connection conn=null;
		PreparedStatement state=null;
		int rowCount=0;
		try {
			conn=getConn();
			String sql="insert into t_postbar (userphone,nickname,title,content,createtime,imageurl) value(?,?,?,?,?,?)";
			state=conn.prepareStatement(sql);
			state.setString(1, t.getUserphone());
			state.setString(2, t.getNickName());
			state.setString(3, t.getTitle());
			state.setString(4, t.getContent());
			state.setString(5, DateUtil.getCurrentDate());
			state.setString(6, t.getImageUrl());
			rowCount=state.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConn(state, conn);
		}
		if(rowCount>0){
			return true;
		}
		return false;
	}

	@Override
	public List<PostBarItem> getDataList(Object... obj) {
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
	
	@SuppressWarnings("unused")
	public List<PostBarItem> getDataList() {
		Connection conn=null;
		List<PostBarItem> postBarList=null;
		try {
			conn=getConn();
			QueryRunner qr=new QueryRunner();
			String sql="select * from t_postbar order by postbarid desc";
			postBarList=(List<PostBarItem>)qr.query(conn,sql,new BeanListHandler<>(PostBarItem.class));
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(null, conn);
		}
		return postBarList;
	}
	
	

}
