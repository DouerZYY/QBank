package com.qbank.dao.impl;
import org.springframework.stereotype.Repository;

import com.qbank.dao.UserDao;
import com.qbank.entity.User;
import com.qbank.dao.impl.BaseDaoImpl;


/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class UserDaoImpl extends BaseDaoImpl<User, String> implements UserDao{

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月4日上午9:34:37
	 */
	@Override
	public User getUserByPhoneNumber(String phoneNumber) {
		// TODO Auto-generated method stub
		String hql = "from User as user where user.phoneNumber = :phoneNumber";

		return (User) getSession().createQuery(hql).setParameter("phoneNumber", phoneNumber).uniqueResult();
	}

	@Override
	public User checkCashPassWd(String userId, String cashPw) {
		// TODO Auto-generated method stub
		String hql="from User as u where u.id=:id and u.cashPassword=:cashPassword";
		return (User)getSession().createQuery(hql).setParameter("id", userId).setParameter("cashPassword", cashPw).uniqueResult();
	}

	@Override
	public Integer getMemberNum() {
		String hql = " from User";
		return getSession().createQuery(hql).list().size();
	}

}
