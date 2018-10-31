package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.qbank.dao.AdminDao;
import com.qbank.entity.Admin;
import com.qbank.service.AdminService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:40:56
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class AdminServiceImpl extends BaseServiceImpl<Admin, String> implements AdminService{
	
	@Resource
	AdminDao adminDao;
	@Resource 
	public void setBaseDao(AdminDao adminDao) {
		super.setBaseDao(adminDao);
	}
	@Override
	public Admin getInfoByName(String adminName) {
		// TODO Auto-generated method stub
		return adminDao.getInfoByName(adminName);
	}
}
