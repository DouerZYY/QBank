package com.qbank.service;

import com.qbank.entity.Grade;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:31:55
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface GradeService extends BaseService<Grade, String> {
	public Grade getInfoByCode(Integer gradeCode);
}
