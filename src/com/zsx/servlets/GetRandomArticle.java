package com.zsx.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.ArticleDaoImp;
import com.zsx.beans.ArticleBean;
import com.zsx.servlets.base.BaseServletFactory;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GetRandomArticle extends BaseServletFactory {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7254161141636273236L;
	

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
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
	
		PrintWriter pw = response.getWriter();
		JSONObject json = JSONObject.fromObject(map);
		pw.print(json.toString());
		System.out.println("json  :" + json.toString());
		pw.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request, response);
	}

}
