package com.qbank.dao.impl;

import org.springframework.stereotype.Repository;

import com.qbank.dao.AdminDao;
import com.qbank.entity.Admin;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:33:35
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/

@Repository
public class AdminDaoImpl extends BaseDaoImpl<Admin, String> implements
		AdminDao {


	@Override
	public Admin getInfoByName(String adminName) {
		// TODO Auto-generated method stub
		String hql = "from Admin as admin where admin.adminName = :adminName";
		
		return (Admin) getSession().createQuery(hql).setParameter("adminName", adminName).uniqueResult();
	}

}
