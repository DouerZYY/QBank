package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.UserDao;
import com.qbank.entity.User;
import com.qbank.service.UserService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午11:03:02
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class UserServiceImpl extends BaseServiceImpl<User, String> implements
		UserService {
	@Resource
	UserDao userDao;
	@Resource
	public void setBaseDao(UserDao userDao) {
		super.setBaseDao(userDao);
	}
	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月4日上午9:33:38
	 */
	@Override
	public User getUserByPhoneNumber(String phoneNumber) {
		// TODO Auto-generated method stub 
		return userDao.getUserByPhoneNumber(phoneNumber);
	}
	@Override
	public User checkCashPassWd(String userId, String cashPw) {
		// TODO Auto-generated method stub
		return userDao.checkCashPassWd(userId,cashPw);
	}
	@Override
	public Integer getMemberNum() {
		// TODO Auto-generated method stub
		return userDao.getMemberNum();
	}
	
	
	
}
