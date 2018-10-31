package com.qbank.service;


import com.qbank.entity.Rates;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:33:48
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface RatesService extends BaseService<Rates, String> {
	public Rates getRatesByCode(String code);
}
