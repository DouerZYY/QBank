package com.qbank.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qbank.dao.ArticleTypeDao;
import com.qbank.entity.ArticleType;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:48:09
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class ArticleTypeDaoImpl extends BaseDaoImpl<ArticleType, String>
		implements ArticleTypeDao {

	@Override
	public ArticleType getTypeByCode(String code) {
		// TODO Auto-generated method stub
		String hql = "from ArticleType as a where a.artTypeCode=:code";
		 @SuppressWarnings("unchecked")
		List <ArticleType> aList = getSession().createQuery(hql).setParameter("code", code).list();
		 if (!aList.isEmpty()){
			 return aList.get(0);
		 }else{
			 return null;
		 }
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ArticleType> getChildList(String id) {
		// TODO Auto-generated method stub
		String hql = "from ArticleType as a where a.parentId=:id";
		
		return getSession().createQuery(hql).setParameter("id", id).list();
	}

}
