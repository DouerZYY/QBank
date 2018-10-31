package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.qbank.dao.GradeDao;
import com.qbank.entity.Grade;
import com.qbank.service.GradeService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:57:57
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class GradeServiceImpl extends BaseServiceImpl<Grade, String> implements
		GradeService {
	
	@Resource
	GradeDao gradeDao;
	@Resource
	public void setBaseDao(GradeDao gradeDao) {
		super.setBaseDao(gradeDao);
	}
	
	@Override
	public Grade getInfoByCode(Integer gradeCode) {
		// TODO Auto-generated method stub
		return gradeDao.getInfoByCode(gradeCode);
	}
}
