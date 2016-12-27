package com.zsx.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.UserDao;
import com.zsx.beans.UserBean;

/**
 * 增加一个用户
 *
 */
public class AddUserServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userName=request.getParameter("userName");
		String userPassword=request.getParameter("userPass");
		int age = 0;
		try
		{
			age=Integer.parseInt(request.getParameter("age"));
		}catch(Exception e){
			e.printStackTrace();
		}
		//组装
		UserBean user=new UserBean(userName, userPassword);
		//存值
		new UserDao().addOne(user);
		//跳转
//		response.sendRedirect("jsp/login.jsp");
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
