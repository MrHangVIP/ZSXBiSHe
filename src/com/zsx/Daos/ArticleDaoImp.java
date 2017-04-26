package com.zsx.Daos;

import java.sql.Connection;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.zsx.Daos.base.BaseDBFactor;
import com.zsx.beans.ArticleBean;

public class ArticleDaoImp extends BaseDBFactor<ArticleBean> {

	@Override
	public boolean insertData(ArticleBean t) {
		return false;
	}

	@Override
	public List<ArticleBean> getDataList(Object... obj) {
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
	
	@SuppressWarnings("unchecked")
	public List<ArticleBean> getDataList(String type) {
		Connection conn=null;
		List<ArticleBean> articleList=null;
		try {
			conn=getConn();
			QueryRunner qr=new QueryRunner();
			String sql="select * from t_article where type = ? ";
			articleList=(List<ArticleBean>)qr.query(conn,sql,new BeanListHandler<>(ArticleBean.class),type);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(null, conn);
		}
		return articleList;
	}
	
	
	@SuppressWarnings("unused")
	public List<ArticleBean> getDataList() {
		Connection conn=null;
		List<ArticleBean> articleList=null;
		try {
			conn=getConn();
			QueryRunner qr=new QueryRunner();
			String sql="select * from t_article ";
			articleList=(List<ArticleBean>)qr.query(conn,sql,new BeanListHandler<>(ArticleBean.class));
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeConn(null, conn);
		}
		return articleList;
	}
	
	


}
