package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.CodeDao;
import com.qbank.entity.Code;
import com.qbank.entity.User;
import com.qbank.service.CodeService;
import com.qbank.service.impl.BaseServiceImpl;

/**
 * 
 */

/**
 * @author Joy
 *
 */
@Service
public class CodeServiceImpl extends BaseServiceImpl<Code, String > implements CodeService {
	@Resource
	CodeDao codeDao;
	
	@Resource
	public void setBaseDao(CodeDao CodeDao){
		super.setBaseDao(codeDao);
	}

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月4日上午11:09:53
	 */
	@Override
	public Code getCodeByUser(User user) {
		// TODO Auto-generated method stub
		return codeDao.getCodeByUser(user);
	}

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月4日下午3:52:19
	 */
	@Override
	public void deleteCodeByUser(User user) {
		// TODO Auto-generated method stub
		codeDao.deleteCodeByUser(user);
	}

}
