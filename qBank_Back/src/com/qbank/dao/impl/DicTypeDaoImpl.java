package com.qbank.dao.impl;

import org.springframework.stereotype.Repository;

import com.qbank.dao.DicTypeDao;
import com.qbank.entity.DicType;
/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:53:21
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class DicTypeDaoImpl extends BaseDaoImpl<DicType, String> implements
		DicTypeDao {

	@Override
	public DicType getTypeByCode(String code) {
		// TODO Auto-generated method stub
		String hql = "from DicType as dicType where lower(dicType.dicTypeCode) =lower(:code)";
		return (DicType)getSession().createQuery(hql).setParameter("code", code).uniqueResult();
	}

}
