package com.zsx.servlets;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xml.internal.security.exceptions.Base64DecodingException;
import com.sun.org.apache.xml.internal.security.utils.Base64;
import com.zsx.servlets.base.BaseServletFactory;

public class ImageUpload extends BaseServletFactory {

	/**
	 * 
	 */
	private static final long serialVersionUID = 222834079692167531L;

	@Override
	protected Map<String, String> dataModel(HttpServletRequest request, HttpServletResponse response) {
		String image = request.getParameter("image");
		String fileName = System.currentTimeMillis() + ".png";
		// /ImageUpload
		// String getServletPath= request.getServletPath();
		// D:\GitWorkSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\ZSXBiShe\ZSXBiShe\ImageUpload
		// String
		// getRealPath=request.getSession().getServletContext().getRealPath(request.getRequestURI());
		// D:\GitWorkSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\ZSXBiShe\
		String imagePath = this.getServletConfig().getServletContext().getRealPath("/");
		// 获取base64的图片二进制
		byte[] imageByte = null;
		try {
			imageByte = Base64.decode(image);
		} catch (Base64DecodingException e) {
			e.printStackTrace();
			System.out.println("json  :" + e.toString());
		}
		// 将二进制转换成输出流
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		try {
			bos.write(imageByte);
			// 写入文件
			File imageFile = new File(imagePath + "\\image\\" + fileName);
			// 根据文件创建文件的输出流
			OutputStream out = new FileOutputStream(imageFile);
			bos.writeTo(out);
			out.close();
			bos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Map<String,String> map=new HashMap<>();
		map.put("result", "success");
		map.put("data", fileName);
		return map;
	}

}
