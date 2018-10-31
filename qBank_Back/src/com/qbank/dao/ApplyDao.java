package com.qbank.dao;

import java.util.List;

import com.qbank.entity.Apply;
import com.qbank.entity.User;


/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:09:08
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface ApplyDao extends BaseDao<Apply, String> {
	
	public List<Apply> getApplyListByUser(User user);
}
