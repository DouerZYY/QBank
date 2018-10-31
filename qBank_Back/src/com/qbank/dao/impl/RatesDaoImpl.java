package com.qbank.dao.impl;

import org.springframework.stereotype.Repository;

import com.qbank.dao.RatesDao;
import com.qbank.entity.Rates;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:58:30
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class RatesDaoImpl extends BaseDaoImpl<Rates, String> implements
		RatesDao {

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月5日下午11:54:25
	 */
	@Override
	public Rates getRatesByCode(String code) {
		// TODO Auto-generated method stub
		String hql = "from Rates as rates where rates.rateCode = :code";
		return (Rates)getSession().createQuery(hql).setParameter("code", code).uniqueResult();
	}

}
