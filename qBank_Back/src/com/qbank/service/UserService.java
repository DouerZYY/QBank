package com.qbank.service;

import com.qbank.entity.User;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:38:32
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface UserService extends BaseService<User, String> {
	public User getUserByPhoneNumber(String phoneNumber);
	//验证用户支付密码是否正确，输入参数，用户ID和用户的支付密码
	public User checkCashPassWd(String userId, String cashPw);
	//获取用户总数
	public Integer getMemberNum();
}
