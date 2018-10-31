package com.qbank.dao;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.qbank.entity.AccountRecord;
import com.qbank.entity.User;


/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:10:27
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface AccountRecordDao extends BaseDao<AccountRecord, String> {
	public List<AccountRecord> getAmountRecordListByUser(User user);
	
	//获取指定日期的收益交易流水
		public List<AccountRecord> getRecordByDate(User user,Date date);
		//获取投资总额
		public BigDecimal getTotalInvest(User user);
}
