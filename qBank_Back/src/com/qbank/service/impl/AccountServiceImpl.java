package com.qbank.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.AccountDao;
import com.qbank.entity.Account;
import com.qbank.entity.User;
import com.qbank.service.AccountService;


/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:14:37
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class AccountServiceImpl  extends BaseServiceImpl<Account, String> implements AccountService{
	@Resource
	AccountDao accountDao;
	@Resource
	public void setBaseDao(AccountDao accountDao) {
		super.setBaseDao(accountDao);
	}
	@Override
	public Account getInfoByUser(User user) {
		// TODO Auto-generated method stub
		return accountDao.getInfoByUser(user);
	}
}
