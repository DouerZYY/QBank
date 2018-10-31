/**
 * 
 */
package com.qbank.service;

import java.util.List;

import com.qbank.entity.Card;
import com.qbank.entity.User;

/**
 * @author Joy
 *
 */

public interface CardService extends BaseService<Card, String> {
	public List<Card> getCardListByUser(User user);
}
