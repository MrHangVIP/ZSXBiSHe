package com.zsx.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.UserDao;
import com.zsx.utils.JsonHelp;

import net.sf.json.JSONObject;

/**
 * 增加一个用户
 *
 */
public class GetUserList extends HttpServlet {

	
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userName=request.getParameter("userName");
		//存值
		String backStr=new UserDao().getUserList(userName);
		PrintWriter pw=response.getWriter();
		JSONObject backJson=null;
		Map<String,Object> map=new HashMap<>();
		if(backStr ==null){
			map.put("result", 0);
			map.put("list", "[]");
			
		}else{
			map.put("result", 1);
			map.put("list",backStr) ;
		
		}
		backJson=JSONObject.fromObject(map);
		pw.write(backJson.toString());
		pw.close();
		//跳转
//		response.sendRedirect("jsp/login.jsp");
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
