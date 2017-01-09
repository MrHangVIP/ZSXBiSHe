/**
 * 
 */
package com.zsx.servlets;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsx.Daos.UserDaoImp;
import com.zsx.beans.UserBean;
import com.zsx.servlets.base.BaseServletFactory;

/**
 * @author moram
 *
 */
public class RegistUser extends BaseServletFactory{

	
	private static final long serialVersionUID = 1L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String userPhone=request.getParameter("userPhone");
		String userPass=request.getParameter("userPass");
		String status=request.getParameter("status");
		UserBean user=new UserBean();
		user.setUserPhone(userPhone);
		user.setUserPass(userPass);
		user.setStatus(status);
		UserDaoImp usermodel=new UserDaoImp();
		boolean isExist=usermodel.userPhoneChecked(userPhone);
		Map<String, String> map = new HashMap<String, String>();
		if(isExist){
			map.put("result", "fail");
			map.put("data", "exist");
		}else{
			boolean result=usermodel.insertData(user);
			if(result){
				map.put("result", "success");
			}else{
				map.put("result", "fail");
			}
		}
		return map;
	}
	
	
	

}
