package com.qbank.service;

import java.util.List;

import com.qbank.entity.User;
import com.qbank.entity.WebMail;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:36:18
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface WebMailService extends BaseService<WebMail, String> {
	
	
	
	/**
	 * 获取指定用户的站内信
	 *
	 */
	public List<WebMail> getMail(User user);
	/**
	 * 获取未读消息数目
	 */
	public Integer getUnreadAmt(User user);
}
