package com.zsx.servlets;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.UserDaoImp;
import com.zsx.beans.UserBean;
import com.zsx.servlets.base.BaseServletFactory;

public class UpdateUserInfo extends BaseServletFactory {
	private static final long serialVersionUID = 1L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String userPhone=request.getParameter("userPhone");
		String status=request.getParameter("status");
		String nickName=request.getParameter("nickName");
		String city=request.getParameter("city");
		String birthday=request.getParameter("birthday");
		String token=request.getParameter("token");
		Map<String, String> map = new HashMap<String, String>();
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
		return map;
	}
}
