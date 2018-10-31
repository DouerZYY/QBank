package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.qbank.dao.WebLogDao;
import com.qbank.entity.WebLog;
import com.qbank.service.WebLogService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午11:04:11
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class WebLogServiceImpl extends BaseServiceImpl<WebLog, String>
		implements WebLogService {
	@Resource
	WebLogDao webLogDao;
	public void setBaseDao(WebLogDao webLogDao) {
		super.setBaseDao(webLogDao);
	}
}
