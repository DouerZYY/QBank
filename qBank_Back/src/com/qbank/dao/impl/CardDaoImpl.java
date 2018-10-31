/**
 * 
 */
package com.qbank.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qbank.dao.CardDao;
import com.qbank.entity.Card;
import com.qbank.entity.User;

/**
 * @author Joy
 *
 */
@Repository
public class CardDaoImpl extends BaseDaoImpl<Card, String> 
			implements CardDao {

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月6日上午8:59:27
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Card> getCardListByUser(User user) {
		// TODO Auto-generated method stub
		String hql = "from Card as card where card.user=:user";
		
		return getSession().createQuery(hql).setParameter("user", user.getId()).list();
	}
	
	
}
