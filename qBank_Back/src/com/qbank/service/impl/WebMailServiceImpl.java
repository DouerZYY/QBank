package com.qbank.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;





import com.qbank.dao.WebMailDao;
import com.qbank.entity.User;
import com.qbank.entity.WebMail;
import com.qbank.service.WebMailService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午11:04:49
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class WebMailServiceImpl extends BaseServiceImpl<WebMail, String>
		implements WebMailService {
	@Resource
	WebMailDao webMailDao;
	@Resource
	public void setBaseDao(WebMailDao webMailDao) {
		super.setBaseDao(webMailDao);
	}
	@Override
	public List<WebMail> getMail(User user) {
		// TODO Auto-generated method stub
		return webMailDao.getMail(user);
	}
	@Override
	public Integer getUnreadAmt(User user) {
		// TODO Auto-generated method stub
		return webMailDao.getUnreadAmt(user);
	}
}
