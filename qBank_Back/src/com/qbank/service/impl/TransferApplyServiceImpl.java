package com.qbank.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.TransferApplyDao;
import com.qbank.entity.TransferApply;
import com.qbank.entity.User;
import com.qbank.service.TransferApplyService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午11:01:59
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class TransferApplyServiceImpl extends
		BaseServiceImpl<TransferApply, String> implements TransferApplyService {
	@Resource
	TransferApplyDao transferApplyDao;
	@Resource
	public void setBaseDao(TransferApplyDao transferApplyDao) {
		super.setBaseDao(transferApplyDao);
	}
	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月16日下午3:51:37
	 */
	@Override
	public List<TransferApply> getTransferApplyByUser(User user) {
		// TODO Auto-generated method stub
		return transferApplyDao.getTransferApplyByUser(user);
	}
	
}
