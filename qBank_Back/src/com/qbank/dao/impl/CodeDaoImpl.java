/**
 * 
 */
package com.qbank.dao.impl;

import org.springframework.stereotype.Repository;

import com.qbank.dao.CodeDao;
import com.qbank.entity.Code;
import com.qbank.entity.User;

/**
 * @author Joy
 *
 */
@Repository
public class CodeDaoImpl extends BaseDaoImpl<Code, String> 
	implements CodeDao {

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月4日上午11:05:32
	 */
	@Override
	public Code getCodeByUser(User user) {
		// TODO Auto-generated method stub
		String hql = "from Code as code where code.user = :user ";
		return (Code) getSession().createQuery(hql).setParameter("user", user).uniqueResult();
	}

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月4日下午3:49:26
	 */
	@Override
	public void deleteCodeByUser(User user) {
		// TODO Auto-generated method stub
		String hql = "delete from Code code where code.user = :user ";
		getSession().createQuery(hql).setParameter("user", user);
	}

}
