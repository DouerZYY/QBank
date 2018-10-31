package com.qbank.dao.impl;

import org.springframework.stereotype.Repository;

import com.qbank.dao.GradeDao;
import com.qbank.entity.Grade;
/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:54:33
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class GradeDaoImpl extends BaseDaoImpl<Grade, String> implements
		GradeDao {

	@Override
	public Grade getInfoByCode(Integer gradeCode) {
		// TODO Auto-generated method stub
		String hql = "from Grade as grade where grade.gradeCode = :gradeCode";
		return (Grade) getSession().createQuery(hql).setParameter("gradeCode", gradeCode).uniqueResult();
	}

}
