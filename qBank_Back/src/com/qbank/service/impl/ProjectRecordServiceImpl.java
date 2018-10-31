package com.qbank.service.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;



import com.qbank.dao.ProjectRecordDao;
import com.qbank.entity.Project;
import com.qbank.entity.ProjectRecord;
import com.qbank.entity.User;
import com.qbank.service.ProjectRecordService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:59:49
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class ProjectRecordServiceImpl extends
		BaseServiceImpl<ProjectRecord, String> implements ProjectRecordService {
	
	@Resource
	ProjectRecordDao projectRecordDao;
	@Resource
	public void setBaseDao(ProjectRecordDao projectRecordDao) {
		super.setBaseDao(projectRecordDao);
	}
	@Override
	public List<Project> getProjectListByUser(User user) {
		// TODO Auto-generated method stub
		return projectRecordDao.getProjectListByUser(user);
	}
	@Override
	public List<ProjectRecord> getProjectRecordListById(User user) {
		// TODO Auto-generated method stub
		return projectRecordDao.getProjectRecordListById(user);
	}
	@Override
	public List<ProjectRecord> getRecordById(String id) {
		// TODO Auto-generated method stub
		return projectRecordDao.getRecordById(id);
	}
	@Override
	public BigDecimal getInvestAll() {
		// TODO Auto-generated method stub
		return projectRecordDao.getInvestAll();
	}
}
