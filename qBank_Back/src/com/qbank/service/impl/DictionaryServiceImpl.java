package com.qbank.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.DictionaryDao;
import com.qbank.entity.DicType;
import com.qbank.entity.Dictionary;
import com.qbank.service.DictionaryService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:56:09
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class DictionaryServiceImpl extends BaseServiceImpl<Dictionary, String>
		implements DictionaryService {
	@Resource
	DictionaryDao dictionaryDao;
	@Resource
	public void setBaseDao(DictionaryDao dictionaryDao) {
		super.setBaseDao(dictionaryDao);
	}
	@Override
	public List<Dictionary> getDicByCode(DicType dicType) {
		// TODO Auto-generated method stub
		return dictionaryDao.getDicByCode(dicType);
	}
}
