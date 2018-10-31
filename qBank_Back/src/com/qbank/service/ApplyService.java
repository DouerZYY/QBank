package com.qbank.service;

import java.util.List;

import com.qbank.entity.Apply;
import com.qbank.entity.User;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:22:32
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface ApplyService extends BaseService<Apply, String> {
	
	public List<Apply> getApplyListByUser(User user);
	
}
