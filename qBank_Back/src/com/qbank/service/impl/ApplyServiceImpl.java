package com.qbank.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.qbank.dao.ApplyDao;
import com.qbank.entity.Apply;
import com.qbank.entity.User;
import com.qbank.service.ApplyService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:47:17
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class ApplyServiceImpl extends BaseServiceImpl<Apply, String> implements ApplyService{
	@Resource
	ApplyDao applyDao;
	@Resource
	public void setBaseDao(ApplyDao applyDao) {
		super.setBaseDao(applyDao);
	}
	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月16日下午3:13:27
	 */
	@Override
	public List<Apply> getApplyListByUser(User user) {
		// TODO Auto-generated method stub
		return applyDao.getApplyListByUser(user);
	}
}
