package com.qbank.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qbank.dao.DictionaryDao;
import com.qbank.entity.DicType;
import com.qbank.entity.Dictionary;
/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:52:01
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class DictionaryDaoImpl extends BaseDaoImpl<Dictionary, String>
		implements DictionaryDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Dictionary> getDicByCode(DicType  dicType) {
		// TODO Auto-generated method stub
		String hql = "from Dictionary as dictionary where dictionary.dictype = :dicType";
		
		return getSession().createQuery(hql).setParameter("dicType", dicType).list();
	}

}
