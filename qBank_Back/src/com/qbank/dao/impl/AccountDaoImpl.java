package com.qbank.dao.impl;

import org.springframework.stereotype.Repository;

import com.qbank.dao.AccountDao;
import com.qbank.entity.Account;
import com.qbank.entity.User;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:27:43
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/

@Repository
public class AccountDaoImpl extends BaseDaoImpl<Account, String> implements AccountDao {

	@Override
	public Account getInfoByUser(User user) {
		// TODO Auto-generated method stub
		String hql = "from Account as account where account.user = :user";
		
		return (Account) getSession().createQuery(hql).setParameter("user", user).uniqueResult();
	}

}
