
package com.qbank.dao;


import com.qbank.entity.Rates;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:21:40
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface RatesDao extends BaseDao<Rates, String> {
		
	public Rates getRatesByCode(String code);
}
