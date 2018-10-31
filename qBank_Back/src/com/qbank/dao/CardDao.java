/**
 * 
 */
package com.qbank.dao;

import java.util.List;

import com.qbank.entity.Card;
import com.qbank.entity.User;

/**
 * @author Joy
 *
 */
public interface CardDao extends BaseDao<Card, String>{
	public List<Card> getCardListByUser(User user);
}