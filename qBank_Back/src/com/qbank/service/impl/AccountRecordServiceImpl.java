package com.qbank.service.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.AccountRecordDao;
import com.qbank.entity.AccountRecord;
import com.qbank.entity.User;
import com.qbank.service.AccountRecordService;


/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:39:19
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class AccountRecordServiceImpl extends BaseServiceImpl<AccountRecord, String> implements AccountRecordService{
	@Resource
	AccountRecordDao accountRecordDao;
	
	@Resource
	public void setBaseDao(AccountRecordDao accountRecordDao) {
		super.setBaseDao(accountRecordDao);
	}

	@Override
	public List<AccountRecord> getAccountRecordListByUser(User user) {
		// TODO Auto-generated method stub
		return accountRecordDao.getAmountRecordListByUser(user);
	}

	@Override
	public List<AccountRecord> getRecordByDate(User user, Date date) {
		// TODO Auto-generated method stub
		return accountRecordDao.getRecordByDate(user, date);
	}

	@Override
	public BigDecimal getTotalInvest(User user) {
		// TODO Auto-generated method stub
		return accountRecordDao.getTotalInvest(user);
	}
}
