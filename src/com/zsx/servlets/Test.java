package com.zsx.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

public class Test extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// response.setContentType("application/json; charset=utf-8");
		// {"result":"0","resultList":[{json},{json},{json}]};
		PrintWriter pw = response.getWriter();
		Map<String, Object> map = new HashMap();
		map.put("result", 0);
		map.put("list", "hello");
		JSONObject json = JSONObject.fromObject(map);
		pw.print(json.toString());
		System.out.println("json  :" + json.toString());
		// System.out.println("json object :"+json.toString());

		pw.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.doGet(request, response);
	}

}
