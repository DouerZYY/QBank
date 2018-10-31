package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.RatesDao;
import com.qbank.entity.Rates;
import com.qbank.service.RatesService;


/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午11:00:45
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class RatesServiceImpl extends BaseServiceImpl<Rates, String> implements
		RatesService {
	@Resource
	RatesDao ratesDao;
	
	@Resource
	public void setBaseDao(RatesDao ratesDao) {
		super.setBaseDao(ratesDao);
	}

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月5日下午11:58:07
	 */
	@Override
	public Rates getRatesByCode(String code) {
		// TODO Auto-generated method stub
		return ratesDao.getRatesByCode(code);
	}
	
}
