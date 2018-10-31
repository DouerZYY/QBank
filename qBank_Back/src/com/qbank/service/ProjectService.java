package com.qbank.service;

import java.math.BigDecimal;
import java.util.List;

import com.qbank.entity.Project;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:32:24
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface ProjectService extends BaseService<Project, String> {
	
	//获取指定记录数
	public List<Project> getPro(Integer num);
	public Project getInfoById(String id);
	//项目购买
	public void projectBuy(String userId,BigDecimal amount,String id); 
}
