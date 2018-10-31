package com.qbank.dao;


import com.qbank.entity.Admin;


/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:10:18
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface AdminDao extends BaseDao<Admin, String> {
	public Admin getInfoByName(String adminName);
}
