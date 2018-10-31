package com.qbank.service;

import com.qbank.entity.DicType;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:31:14
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface DicTypeService extends BaseService<DicType, String> {
	
	
	public DicType getTypeByCode(String code);
}
