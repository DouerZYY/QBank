package com.qbank.dao;

import java.util.List;

import com.qbank.entity.TransferApply;
import com.qbank.entity.User;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:22:52
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface TransferApplyDao extends BaseDao<TransferApply, String> {
	public List<TransferApply> getTransferApplyByUser(User user);
}	
