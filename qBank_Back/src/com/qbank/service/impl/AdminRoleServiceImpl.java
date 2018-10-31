package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.qbank.dao.AdminRoleDao;
import com.qbank.entity.AdminRole;
import com.qbank.service.AdminRoleService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:43:05
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class AdminRoleServiceImpl extends BaseServiceImpl<AdminRole, String> implements AdminRoleService{
	@Resource
	AdminRoleDao adminRoleDao;
	
	public void setBaseDao(AdminRoleDao adminRoleDao) {
		super.setBaseDao(adminRoleDao);
	}
}
