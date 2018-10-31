package com.qbank.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.qbank.dao.AdvertiseDao;
import com.qbank.entity.Advertise;
import com.qbank.service.AdvertiseService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:46:02
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class AdvertiseServiceImpl extends BaseServiceImpl<Advertise, String> implements AdvertiseService{
	@Resource
	AdvertiseDao advertiseDao;
	@Resource
	public void setBaseDao(AdvertiseDao advertiseDao) {
		super.setBaseDao(advertiseDao);
	} 
}
