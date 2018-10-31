/**
 * 
 */
package com.qbank.dao;

import com.qbank.entity.Code;
import com.qbank.entity.User;

/**
 * @author Joy
 *
 */
public interface CodeDao extends BaseDao<Code, String>{
	public Code getCodeByUser(User user);
	public void deleteCodeByUser(User user);
}
