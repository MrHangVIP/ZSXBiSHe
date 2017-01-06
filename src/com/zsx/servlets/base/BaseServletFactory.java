package com.zsx.servlets.base;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import com.zsx.Daos.TokenDaoImp;

public class BaseServletFactory extends HttpServlet {

	/**
	 * 
	 */
	protected static final long serialVersionUID = 1L;
	
	
	protected boolean tokenChecked(String userPhone,String token){
		TokenDaoImp tokenmodel=new TokenDaoImp();
		boolean tokenUserful=tokenmodel.tokenChecked(userPhone, token);
		return tokenUserful;
	}
	
	protected Map<String,Object> getJsonMap(){
		Map<String, Object> map = new HashMap<String, Object>();
			map.put("result", "fail");
			map.put("data", "token error");
			return map;
	}

}
