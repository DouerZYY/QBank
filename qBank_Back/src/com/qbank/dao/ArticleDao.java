package com.qbank.dao;

import java.util.List;

import com.qbank.entity.Article;
import com.qbank.entity.ArticleType;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:09:14
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface ArticleDao extends BaseDao<Article, String> {
	/**
	 * 依据文章类型获取相应文章
	 *
	 */
	public List<Article> getByType(ArticleType type);
}
