package com.qbank.service;

import java.util.List;

import com.qbank.entity.TransferApply;
import com.qbank.entity.User;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:35:02
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface TransferApplyService extends BaseService<TransferApply, String> {
	public List<TransferApply> getTransferApplyByUser(User user);
}
