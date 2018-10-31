package com.qbank.service;


import com.qbank.entity.Admin;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:19:13
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface AdminService extends BaseService<Admin, String> {
	public Admin getInfoByName( String adminName);
}
