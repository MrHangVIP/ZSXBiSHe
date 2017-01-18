package com.zsx.servlets;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.PostBarDaoImpl;
import com.zsx.beans.PostBarItem;
import com.zsx.servlets.base.BaseServletFactory;

public class WritePostBar extends BaseServletFactory {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1535875417254760455L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String userPhone=request.getParameter("userPhone");
		String token=request.getParameter("token");
		String nickName=request.getParameter("nickName");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String imageUrl=request.getParameter("imageUrl");
		boolean effectToken=tokenChecked(userPhone, token);
		if(!effectToken){
			return getJsonMap();
		}
		PostBarItem postBar=new PostBarItem();
		postBar.setContent(content);
		postBar.setUserphone(userPhone);
		postBar.setNickName(nickName);
		postBar.setTitle(title);
		postBar.setImageUrl(imageUrl);
		PostBarDaoImpl barDaoImpl=new PostBarDaoImpl();
		boolean result=barDaoImpl.insertData(postBar);
		Map<String,String> map=new HashMap<>();
		if(result){
			map.put("result", "success");
		}else{
			map.put("result", "fail");
		}
		map.put("data", "");
		return map;
	}

}
