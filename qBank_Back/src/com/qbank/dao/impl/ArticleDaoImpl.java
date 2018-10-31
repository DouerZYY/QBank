package com.qbank.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qbank.dao.ArticleDao;
import com.qbank.entity.Article;
import com.qbank.entity.ArticleType;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:40:58
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class ArticleDaoImpl extends BaseDaoImpl<Article, String> implements
		ArticleDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> getByType(ArticleType type) {
		// TODO Auto-generated method stub
		String hql = "from Article as a where a.articleType = :type";
		return getSession().createQuery(hql).setParameter("type", type).list();
	}

}
