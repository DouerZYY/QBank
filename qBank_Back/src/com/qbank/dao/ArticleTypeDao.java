package com.qbank.dao;

import java.util.List;

import com.qbank.entity.ArticleType;


/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:11:43
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface ArticleTypeDao extends BaseDao<ArticleType, String> {
		
	
	/**
	 * 依据文章编码获取文章类型
	 */
	public ArticleType getTypeByCode(String code);
	public List<ArticleType> getChildList(String code);
}
