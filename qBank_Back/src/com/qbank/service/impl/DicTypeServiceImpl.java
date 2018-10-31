package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.DicTypeDao;
import com.qbank.entity.DicType;
import com.qbank.service.DicTypeService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:57:12
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class DicTypeServiceImpl extends BaseServiceImpl<DicType, String>
		implements DicTypeService {

	@Resource
	DicTypeDao dicTypeDao;
	@Resource
	public void setBaseDao(DicTypeDao dicTypeDao) {
		super.setBaseDao(dicTypeDao);
	}
	@Override
	public DicType getTypeByCode(String code) {
		// TODO Auto-generated method stub
		return dicTypeDao.getTypeByCode(code);
	}
}
