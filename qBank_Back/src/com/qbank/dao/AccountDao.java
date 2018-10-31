package com.qbank.dao;

import com.qbank.entity.Account;
import com.qbank.entity.User;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:10:33
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface AccountDao extends BaseDao<Account	, String> {
	public Account getInfoByUser(User user);
}
