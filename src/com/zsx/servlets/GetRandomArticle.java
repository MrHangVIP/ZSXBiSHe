package com.zsx.servlets;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.ArticleDaoImp;
import com.zsx.beans.ArticleBean;
import com.zsx.servlets.base.BaseServletFactory;

import net.sf.json.JSONArray;

public class GetRandomArticle extends BaseServletFactory {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7254161141636273236L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		int random=Integer.parseInt(request.getParameter("random"));
		String type=request.getParameter("type");
		
		ArticleDaoImp articleDaoImp=new ArticleDaoImp();
		List<ArticleBean> articleList=articleDaoImp.getDataList();
		Map<String ,String> map=new HashMap<>();
		if(articleList==null){
			map.put("result", "fail");
			map.put("data", "");
		}else{
			JSONArray itemJson=null;
			if(random>=articleList.size()){
				itemJson = JSONArray.fromObject(articleList);
			}else{
				List<ArticleBean> randomList=new ArrayList<ArticleBean>();
				for(int i=0;i<random;i++){
					randomList.add(articleList.remove(new Random().nextInt(articleList.size()-1)));
				}
				itemJson = JSONArray.fromObject(randomList);
			}
			
			map.put("result", "success");
			map.put("data", itemJson.toString());
		}
		return map;
	}

}
