package com.zsx.servlets;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.CommentDaoImpl;
import com.zsx.beans.CommentItem;
import com.zsx.servlets.base.BaseServletFactory;

import net.sf.json.JSONArray;

public class GetCommentList extends BaseServletFactory {

	/**
	 * 
	 */
	private static final long serialVersionUID = -410682147401560007L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		
		String postbarId=request.getParameter("postbarId");
		List<CommentItem> commentList=null;
		CommentDaoImpl commentDaoImpl=new CommentDaoImpl();
		commentList=commentDaoImpl.getCommentList(Integer.parseInt(postbarId));
		Map<String,String> map=new HashMap<>();
		if(commentList==null){
			map.put("result", "fail");
			map.put("data", "null");
		}else{
			JSONArray itemJson = JSONArray.fromObject(commentList);
			map.put("result", "success");
			map.put("data", itemJson.toString());
		}
		return map;
	}

}
