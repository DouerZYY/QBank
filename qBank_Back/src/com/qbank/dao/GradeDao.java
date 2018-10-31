package com.qbank.dao;

import com.qbank.entity.Grade;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:19:24
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface GradeDao extends BaseDao<Grade, String> {
	public Grade getInfoByCode(Integer gradeCode);
}
