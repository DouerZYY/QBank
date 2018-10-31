/**
 * 
 */
package com.qbank.service;

import com.qbank.entity.Code;
import com.qbank.entity.User;

/**
 * @author Joy
 *
 */
public interface CodeService extends BaseService<Code, String>{
	public Code getCodeByUser(User user);
	public void deleteCodeByUser(User user);
}
