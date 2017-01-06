package com.zsx.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.TokenDaoImp;
import com.zsx.Daos.UserDaoImp;
import com.zsx.beans.UserBean;
import com.zsx.servlets.base.BaseServletFactory;

import net.sf.json.JSONObject;

public class UpdateUserInfo extends BaseServletFactory {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String userPhone=request.getParameter("userPhone");
		String status=request.getParameter("status");
		String nickName=request.getParameter("nickName");
		String city=request.getParameter("city");
		String birthday=request.getParameter("birthday");
		String token=request.getParameter("token");
		Map<String, Object> map = new HashMap<String, Object>();
		if(!tokenChecked(userPhone, token)){
			map=getJsonMap();
		}else{
			UserBean user=new UserBean(userPhone, status, nickName, city, birthday);
			UserDaoImp usermodel=new UserDaoImp();
			boolean  update=usermodel.updateData(user);
			if(update){
				map.put("result", "success");
				map.put("data",  "");
			}else{
				map.put("result", "fail");
				map.put("data", "update fail");
			}
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
