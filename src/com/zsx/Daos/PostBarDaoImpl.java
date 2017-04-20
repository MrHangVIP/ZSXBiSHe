package com.zsx.Daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zsx.Daos.base.BaseDBFactor;
import com.zsx.beans.PostBarItem;
import com.zsx.beans.UserBean;
import com.zsx.utils.DateUtil;

public class PostBarDaoImpl extends BaseDBFactor<PostBarItem> {

	@Override
	public boolean insertData(PostBarItem t) {
		Connection conn = null;
		PreparedStatement state = null;
		int rowCount = 0;
		try {
			conn = getConn();
			String sql = "insert into t_postbar(userphone,title,content,createtime,imageurl,orders) value(?,?,?,?,?,?)";
			state = conn.prepareStatement(sql);
			state.setString(1, t.getUserPhone());
			state.setString(2, t.getTitle());
			state.setString(3, t.getContent());
			state.setString(4, DateUtil.getCurrentDate());
			state.setString(5, t.getImageUrl());
			state.setString(6, t.getOrders());
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

	public List<PostBarItem> getDataList(String userphone) {
		Connection conn = null;
		List<PostBarItem> postBarList = null;
		try {
			conn = getConn();
			String sql="select ifnull(t_praise_nums.praiseCount,0) as likenums,"
					+ "ifnull(t_comment_nums.commentCount,0) as commentnums,"
					+ "case when t_praise.postbarid is null then 0 else 1 end as haslike, "
					+ "t_postbar.*, t_user.headurl, t_user.nickname "
					+ "from t_postbar  left JOIN t_user on t_postbar.userphone = t_user.userphone "
					+ "left JOIN t_praise on t_postbar.postbarid = t_praise.postbarid and t_praise.userphone = ? "
					+ "LEFT JOIN t_praise_nums ON t_postbar.postbarid = t_praise_nums.postbarid "
					+ "LEFT JOIN t_comment_nums ON t_postbar.postbarid = t_comment_nums.postbarid "
					+ "ORDER BY t_postbar.postbarid DESC ";//LIMIT 0, " + count 可以请求条数
			QueryRunner qr = new QueryRunner();
			postBarList = (List<PostBarItem>) qr.query(conn, sql, new BeanListHandler<>(PostBarItem.class),userphone);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(null, conn);
		}
		return postBarList;
	}

}
