/**
 * 
 */package com.qbank.service;

import java.util.List;

import com.qbank.entity.DicType;
import com.qbank.entity.Dictionary;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:30:26
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
/**
 * @author a
 *
 */
public interface DictionaryService extends BaseService<Dictionary, String> {
	
	
	public List<Dictionary> getDicByCode(DicType dicType);
}
