package com.zsx.Daos.base;

import java.util.List;

import com.zsx.utils.DBUtil;

/**
 * 数据库操作基类
 * @author moram
 *
 * @param <T>
 */
public abstract class BaseDBFactor<T> extends DBUtil{
	
	/**
	 * 数据库数据增加
	 * @return
	 */
	public abstract boolean insertData(T t);

	/**
	 * 数据查询
	 * @return
	 */
	public abstract List<T> getDataList(Object... obj);
	
	
	/**
	 * 更新数据
	 * @param obj
	 * @return
	 */
	public abstract boolean updateData(Object... obj);
	
	/**
	 * 删除数据
	 * @param id
	 * @return
	 */
	public abstract boolean deleteData(int id);
	
	

}
