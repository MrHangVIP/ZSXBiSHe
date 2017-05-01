package com.zsx.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zsx.Daos.base.BaseDBFactor;
import com.zsx.beans.CommentItem;
import com.zsx.beans.PostBarItem;
import com.zsx.utils.DateUtil;

public class CommentDaoImpl extends BaseDBFactor<CommentItem> {

	@Override
	public boolean insertData(CommentItem t) {
		Connection conn = null;
		PreparedStatement state = null;
		int rowCount = 0;
		try {
			conn = getConn();
			String sql = "insert into t_comment(postbarid,userphone,content,createtime) value(?,?,?,?)";
			state = conn.prepareStatement(sql);
			state.setInt(1, t.getPostbarId());
			state.setString(2, t.getUserPhone());
			state.setString(3, t.getContent());
			state.setString(4, DateUtil.getCurrentDate());
			rowCount = state.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(state, conn);
		}
		if (rowCount > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List getDataList(Object... obj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateData(Object... obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteData(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public List<CommentItem> getCommentList(int postbarId){
		Connection conn = null;
		List<CommentItem> commentList = null;
		try {
			conn = getConn();
			String sql="select t_comment.*, t_user.headurl, t_user.nickname from t_comment "
					+ "left JOIN t_user on t_comment.userphone = t_user.userphone "
					+ "where postbarid = ? "
					+ "ORDER BY t_comment.id ASC ";//LIMIT 0, " + count 可以请求条数
			QueryRunner qr = new QueryRunner();
			commentList = (List<CommentItem>) qr.query(conn, sql, new BeanListHandler<>(CommentItem.class),postbarId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(null, conn);
		}
		return commentList;
	}

}
