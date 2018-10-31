package com.qbank.dao;

import java.util.List;

import com.qbank.entity.User;
import com.qbank.entity.WebMail;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:24:28
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface WebMailDao extends BaseDao<WebMail, String> {
	
	
	/**
	 * 获取指定用户的站内信管
	 * 
	 */
	public List<WebMail> getMail(User user);
	/**
	 * 获取未读消息数目
	 */
	public Integer getUnreadAmt(User user);
}
