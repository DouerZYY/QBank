package com.qbank.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qbank.dao.TransferApplyDao;
import com.qbank.entity.TransferApply;
import com.qbank.entity.User;
/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:59:27
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class TransferApplyDaoImpl extends BaseDaoImpl<TransferApply, String>
		implements TransferApplyDao {

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月16日下午3:44:24
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TransferApply> getTransferApplyByUser(User user) {
		// TODO Auto-generated method stub
		String hql = "from TransferApply as ta where ta.fromUser =:user order by ta.modifyDate desc";
		return getSession().createQuery(hql).setParameter("user", user).list();
	}

}
