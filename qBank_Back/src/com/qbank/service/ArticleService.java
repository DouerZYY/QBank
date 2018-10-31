package com.qbank.service;

import java.util.List;

import com.qbank.entity.Article;
import com.qbank.entity.ArticleType;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:23:08
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface ArticleService extends BaseService<Article, String> {

	
	
	/**
	 * 依据文章类型获取相应文章
	 *
	 */
	public List<Article> getByType(ArticleType type);
}	
