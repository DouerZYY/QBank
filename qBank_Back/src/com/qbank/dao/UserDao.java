package com.qbank.dao;

import com.qbank.entity.User;

/**@author  作者:littleVv 
 **@date 创建时间：2016-3-4 下午3:14:34 
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface UserDao extends BaseDao<User, String> {
	public User getUserByPhoneNumber(String phoneNumber);
	public User checkCashPassWd(String userId, String cashPw);
	public Integer getMemberNum();
}
