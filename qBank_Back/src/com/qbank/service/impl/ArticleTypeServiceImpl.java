package com.qbank.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.ArticleTypeDao;
import com.qbank.entity.ArticleType;
import com.qbank.service.ArticleTypeService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:53:15
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class ArticleTypeServiceImpl extends
		BaseServiceImpl<ArticleType, String> implements ArticleTypeService {

	@Resource
	ArticleTypeDao articleTypeDao;
	@Resource
	public void setBaseDao(ArticleTypeDao articleTypeDao){
		super.setBaseDao(articleTypeDao);
	}
	@Override
	public ArticleType getTypeByCode(String code) {
		// TODO Auto-generated method stub
		return articleTypeDao.getTypeByCode(code);
	}
	@Override
	public List<ArticleType> getChildList(String code) {
		// TODO Auto-generated method stub
		return articleTypeDao.getChildList(code);
	}

}
