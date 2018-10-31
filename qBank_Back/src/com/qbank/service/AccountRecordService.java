package com.qbank.service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.qbank.entity.AccountRecord;
import com.qbank.entity.User;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:18:27
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface AccountRecordService extends BaseService<AccountRecord, String> {
	public List<AccountRecord> getAccountRecordListByUser(User user);
	
	//获取指定日期的收益交易流水
	public List<AccountRecord> getRecordByDate(User user,Date date);
	//获取投资总额
	public BigDecimal getTotalInvest(User user);
}
