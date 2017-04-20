package com.zsx.servlets;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.PostBarDaoImpl;
import com.zsx.beans.ArticleBean;
import com.zsx.beans.PostBarItem;
import com.zsx.servlets.base.BaseServletFactory;

import net.sf.json.JSONArray;

public class GetPostBar extends BaseServletFactory {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 9209164781764095066L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) { 
		String userPhone=request.getParameter("userPhone");
		String token=request.getParameter("token");
		boolean effectToken=tokenChecked(userPhone, token);
		if(!effectToken){
			return getJsonMap();
		}
		PostBarDaoImpl postBarModel=new PostBarDaoImpl();
		List<PostBarItem> postBarList=postBarModel.getDataList(userPhone);
		Map<String,String> map=new HashMap<>();
		if(postBarList==null){
			map.put("result", "fail");
			map.put("data", "");
		}else{
			JSONArray itemJson = JSONArray.fromObject(postBarList);
			map.put("result", "success");
			map.put("data", itemJson.toString());
		}
		return map;
	}

}
