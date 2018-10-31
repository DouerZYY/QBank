/**
 * 
 */
package com.qbank.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qbank.dao.CardDao;
import com.qbank.entity.Card;
import com.qbank.entity.User;
import com.qbank.service.CardService;

/**
 * @author Joy
 *
 */
@Service
public class CardServiceImpl extends BaseServiceImpl<Card, String> implements CardService {
	@Resource
	CardDao cardDao;
	
	@Resource
	public void setBaseDao(CardDao cardDao){
		super.setBaseDao(cardDao);
	}

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月6日上午9:00:57
	 */
	@Override
	public List<Card> getCardListByUser(User user) {
		// TODO Auto-generated method stub
		return cardDao.getCardListByUser(user);
	}
	
	
}
