package com.qbank.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.ArticleDao;
import com.qbank.entity.Article;
import com.qbank.entity.ArticleType;
import com.qbank.service.ArticleService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:51:50
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class ArticleServiceImpl extends BaseServiceImpl<Article, String> implements ArticleService {
	
	@Resource
	ArticleDao articleDao;
	@Resource
	public void setBaseDao(ArticleDao articleDao) {
		super.setBaseDao(articleDao);
	}
	@Override
	public List<Article> getByType(ArticleType type) {
		// TODO Auto-generated method stub
		return articleDao.getByType(type);
	}
}
