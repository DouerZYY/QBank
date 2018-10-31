package com.qbank.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qbank.dao.WebMailDao;
import com.qbank.entity.User;
import com.qbank.entity.WebMail;
/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午11:01:27
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class WebMailDaoImpl extends BaseDaoImpl<WebMail, String> implements
		WebMailDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<WebMail> getMail(User user) {
		// TODO Auto-generated method stub
		String hql = "from WebMail as w where w.user=:user";
		return getSession().createQuery(hql).setParameter("user", user).list();
	}

	@Override
	public Integer getUnreadAmt(User user) {
		// TODO Auto-generated method stub
		String hql = "from WebMail as w where w.user=:user and w.isRead=0";
		return getSession().createQuery(hql).setParameter("user", user).list().size();
	}

}
