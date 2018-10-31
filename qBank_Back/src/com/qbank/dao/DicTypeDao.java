package com.qbank.dao;

import com.qbank.entity.DicType;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:17:20
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface DicTypeDao extends BaseDao<DicType, String> {
	
	
	public DicType getTypeByCode(String code);
}
