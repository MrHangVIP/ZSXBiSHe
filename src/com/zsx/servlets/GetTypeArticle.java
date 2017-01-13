package com.zsx.servlets;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.ArticleDaoImp;
import com.zsx.beans.ArticleBean;
import com.zsx.servlets.base.BaseServletFactory;

import net.sf.json.JSONArray;

public class GetTypeArticle extends BaseServletFactory {

	/**
	 * 
	 */
	private static final long serialVersionUID = -647825245436544777L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("type");
		ArticleDaoImp articleDaoImp = new ArticleDaoImp();
		List<ArticleBean> articleList = articleDaoImp.getDataList(type);
		Map<String, String> map = new HashMap<>();
		if (articleList == null) {
			map.put("result", "fail");
			map.put("data", "");
		} else {
			JSONArray itemJson = JSONArray.fromObject(articleList);
			map.put("result", "success");
			map.put("data", itemJson.toString());
		}
		return map;
	}

}
