package com.qbank.service;

import java.util.List;

import com.qbank.entity.ArticleType;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:23:55
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface ArticleTypeService extends BaseService<ArticleType, String> {
		
	
	/**
	 * 依据文章编码获取文章类型
	 */
	public ArticleType getTypeByCode(String code);
	
	public List<ArticleType> getChildList(String code);
}
