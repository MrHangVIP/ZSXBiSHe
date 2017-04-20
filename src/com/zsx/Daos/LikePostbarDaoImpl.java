package com.zsx.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.zsx.Daos.base.BaseDBFactor;

public class LikePostbarDaoImpl extends BaseDBFactor<String> {

	@Override
	public boolean insertData(String t) {
		return false;
	}

	@Override
	public List<String> getDataList(Object... obj) {
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
	
	public boolean like(String postbarid,String userphone){
		Connection conn=null;
		PreparedStatement stat=null;
		int rowCount=0;
		boolean result=false;
		try {
			conn=getConn();
			String sql="select * from t_praise where postbarid = ? and userphone = ?";
			stat=conn.prepareStatement(sql);
			stat.setString(1, postbarid);
			stat.setString(2, userphone);
//			rowCount=.getRow();
			if(stat.executeQuery().next()){
				sql="delete from t_praise where postbarid = ? and userphone = ?";
				if(conn !=null){
					conn.prepareStatement(sql);
					stat.setString(1, postbarid);
					stat.setString(2, userphone);
				}
				result= stat.execute();
			}else{
				sql="insert into t_praise (postbarid , userphone)value(?,?)";
				if(conn !=null){
					stat=conn.prepareStatement(sql);
					stat.setString(1, postbarid);
					stat.setString(2, userphone);
				}
				result= stat.execute();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(stat, conn);
		}
		return result;
		
		
	}
	
}
