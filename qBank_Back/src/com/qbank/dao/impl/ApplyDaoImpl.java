package com.qbank.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qbank.dao.ApplyDao;
import com.qbank.entity.Apply;
import com.qbank.entity.User;
/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:40:00
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class ApplyDaoImpl extends BaseDaoImpl<Apply, String> implements
		ApplyDao {

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月16日下午3:11:00
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Apply> getApplyListByUser(User user) {
		// TODO Auto-generated method stub
		String hql = "from Apply as apply where apply.applyUser =:user order by apply.modifyDate desc";
		
		return getSession().createQuery(hql).setParameter("user", user).list();
	}

}
