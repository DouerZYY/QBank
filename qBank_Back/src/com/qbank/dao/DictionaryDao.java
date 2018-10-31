package com.qbank.dao;

import java.util.List;

import com.qbank.entity.DicType;
import com.qbank.entity.Dictionary;


/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:16:29
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface DictionaryDao extends BaseDao<Dictionary, String> {
	
	public List<Dictionary> getDicByCode(DicType  dicType);
}
