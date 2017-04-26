package com.zsx.servlets;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.CommentDaoImpl;
import com.zsx.Daos.PostBarDaoImpl;
import com.zsx.beans.CommentItem;
import com.zsx.servlets.base.BaseServletFactory;

public class WriteComment extends BaseServletFactory {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -410682147401560007L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String postbarId=request.getParameter("postbarId");
		String userPhone=request.getParameter("userPhone");
		String content=request.getParameter("content");
		CommentItem comment=new CommentItem();
		Map<String,String> map=new HashMap<>();
		try {
			comment.setPostbarId(Integer.parseInt(postbarId));
		} catch (Exception e) {
			map.put("result", "fail");
			map.put("data", "");
			return map;
		}
		comment.setUserPhone(userPhone);
		comment.setContent(content);
		CommentDaoImpl postBarDaoImpl=new CommentDaoImpl();
		boolean result=postBarDaoImpl.insertData(comment);
	
		if(result){
			map.put("result", "success");
		}else{
			map.put("result", "fail");
		}
		map.put("data", "");
		return map;
	}

}
