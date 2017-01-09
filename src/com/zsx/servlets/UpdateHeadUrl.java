package com.zsx.servlets;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.UserDaoImp;
import com.zsx.servlets.base.BaseServletFactory;

public class UpdateHeadUrl extends BaseServletFactory {
	private static final long serialVersionUID = 1L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String userPhone=request.getParameter("userPhone");
		String headUrl=request.getParameter("headUrl");
		String token=request.getParameter("token");
		Map<String, String> map = new HashMap<String, String>();
		if(!tokenChecked(userPhone, token)){
			map=getJsonMap();
		}else{
			UserDaoImp usermodel=new UserDaoImp();
			boolean  update=usermodel.updateHeadUrl(userPhone, headUrl);
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
