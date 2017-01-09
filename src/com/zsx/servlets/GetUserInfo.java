package com.zsx.servlets;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.UserDaoImp;
import com.zsx.beans.UserBean;
import com.zsx.servlets.base.BaseServletFactory;

import net.sf.json.JSONObject;

public class GetUserInfo extends BaseServletFactory {
	private static final long serialVersionUID = 1L;
	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String userPhone=request.getParameter("userPhone");
		String token=request.getParameter("token");
		Map<String, String> map = new HashMap<String, String>();
		if(!tokenChecked(userPhone, token)){
			map=getJsonMap();
		}else{
			UserDaoImp usermodel=new UserDaoImp();
			UserBean userInfo=usermodel.getUserInfo(userPhone);
			JSONObject itemJson = JSONObject.fromObject(userInfo);
			map.put("result", token);
			map.put("data",  itemJson.toString());
		}
		return null;
	}
}
