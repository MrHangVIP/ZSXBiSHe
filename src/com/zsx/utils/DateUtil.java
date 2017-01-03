package com.zsx.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	private static SimpleDateFormat sdf = null;

	/**
	 * 获取系统时间 格式为："yyyy-MM-dd HH:mm:ss " 
	 */
	public static String getCurrentDate() {
		Date d = new Date();
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(d);
	}

	/**
	 *  时间戳转换成字符窜
	 *   */
	public static String getDateToString(long time) {
		Date d = new Date(time);
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(d);
	}

	/**
	 * 将字符串转为时间戳
	 * */
	public static long getStringToDate(String time) {
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		try {
			date = sdf.parse(time);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date.getTime()/1000;
	}
	
}
