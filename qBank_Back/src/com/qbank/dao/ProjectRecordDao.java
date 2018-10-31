package com.qbank.dao;

import java.math.BigDecimal;
import java.util.List;

import com.qbank.entity.Project;
import com.qbank.entity.ProjectRecord;
import com.qbank.entity.User;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:20:51
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface ProjectRecordDao extends BaseDao<ProjectRecord, String> {
	public List<Project> getProjectListByUser(User user);
	public List<ProjectRecord> getProjectRecordListById(User user);
	
	public List<ProjectRecord> getRecordById(String id);
	//获取今日投资总额
	public BigDecimal getInvestAll();
	
}
