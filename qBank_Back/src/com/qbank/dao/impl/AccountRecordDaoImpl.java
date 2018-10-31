package com.qbank.dao.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.qbank.dao.AccountRecordDao;
import com.qbank.entity.AccountRecord;
import com.qbank.entity.User;


/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:31:29
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class AccountRecordDaoImpl extends BaseDaoImpl<AccountRecord, String> implements
		AccountRecordDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<AccountRecord> getAmountRecordListByUser(User user) {
		// TODO Auto-generated method stub
		String hql = " from AccountRecord as accountRecord where accountRecord.user = :user";
		
		return getSession().createQuery(hql).setParameter("user", user).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AccountRecord> getRecordByDate(User user, Date date) {
		// TODO Auto-generated method stub
		String hql = "from AccountRecord as a where a.user=:user and a.actionType=1 and a.createDate=:date";
		return getSession().createQuery(hql).setParameter("date", date).setParameter("user", user).list();
	}

	@Override
	public BigDecimal getTotalInvest(User user) {
		// TODO Auto-generated method stub
		BigDecimal amount = new BigDecimal(0);
		String hql = "from AccountRecord as a where a.user=:user and a.actionType=2";
		@SuppressWarnings("unchecked")
		List<AccountRecord> list = getSession().createQuery(hql).setParameter("user", user).list();
		if(!list.isEmpty()){
			for(int i=0;i<=list.size();i++){
				amount = amount.add(list.get(i).getAmount());
			}
		}
		return amount;
	}

}
