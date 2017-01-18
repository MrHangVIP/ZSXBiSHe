package com.zsx.servlets;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.PostBarDaoImpl;
import com.zsx.beans.PostBarItem;
import com.zsx.servlets.base.BaseServletFactory;

import net.sf.json.JSONArray;

public class GetPostList extends BaseServletFactory {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4111783669926025515L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String userPhone=request.getParameter("userPhone");
		String token=request.getParameter("token");
		boolean effectToken=tokenChecked(userPhone, token);
		if(!effectToken){
			return getJsonMap();
		}
		PostBarDaoImpl barDaoImpl=new PostBarDaoImpl();
		List<PostBarItem> postBarList=null;
		postBarList=barDaoImpl.getDataList();
		Map<String,String> map=new HashMap<>();
		if(postBarList==null){
			map.put("result", "fail");
			map.put("data", "null");
		}else{
			JSONArray itemJson = JSONArray.fromObject(postBarList);
			map.put("result", "success");
			map.put("data", itemJson.toString());
		}
		
		return map;
	}

}
