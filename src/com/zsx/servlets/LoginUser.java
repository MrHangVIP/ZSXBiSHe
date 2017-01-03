/**
 * 
 */
package com.zsx.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.ObjectUtils;

import com.zsx.Daos.UserDaoImp;
import com.zsx.beans.UserBean;

import net.sf.json.JSONObject;

/**
 * @author moram
 *
 */
public class LoginUser extends HttpServlet{

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// response.setContentType("application/json; charset=utf-8");
		// {"result":"0","resultList":[{json},{json},{json}]};
		String userPhone=request.getParameter("userPhone");
		String userPass=request.getParameter("userPass");
		UserDaoImp usermodel=new UserDaoImp();
		UserBean userbean=usermodel.login(userPhone,userPass);
		Map<String, Object> map = new HashMap<String, Object>();
		if(userbean==null){
			map.put("result", "fail");
			map.put("data", "");
		}else{
			JSONObject itemJson = JSONObject.fromObject(userbean);
			map.put("result", "success");
			map.put("data",  itemJson.toString());
		}
		
		PrintWriter pw = response.getWriter();
		JSONObject json = JSONObject.fromObject(map);
		pw.print(json.toString());
		System.out.println("json  :" + json.toString());
		pw.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
	

}
