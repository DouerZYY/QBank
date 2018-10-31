package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.qbank.dao.AdPositionDao;
import com.qbank.entity.AdPosition;
import com.qbank.service.AdPositionService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:44:28
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class AdPositionServiceImpl extends BaseServiceImpl<AdPosition, String> implements AdPositionService{
	@Resource
	AdPositionDao adPositonDao;
	@Resource
	public void setBaseDao(AdPositionDao adPositonDao) {
		super.setBaseDao(adPositonDao);
	}
	
}
