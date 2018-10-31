package com.qbank.service;

import java.math.BigDecimal;
import java.util.List;

import com.qbank.entity.Project;
import com.qbank.entity.ProjectRecord;
import com.qbank.entity.User;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:33:08
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public interface ProjectRecordService extends BaseService<ProjectRecord, String> {
	public List<Project> getProjectListByUser(User user);
	public List<ProjectRecord> getProjectRecordListById(User user);
	
	//获取特定项目投资记录
	public List<ProjectRecord> getRecordById(String id);
	//获取今日投资总额
	public BigDecimal getInvestAll(); 
}
