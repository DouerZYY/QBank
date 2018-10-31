package com.qbank.service;

import com.qbank.entity.Account;
import com.qbank.entity.User;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:13:23
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface AccountService extends BaseService<Account, String> {
	public Account getInfoByUser(User user);
}
