package com.qbank.dao.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.qbank.dao.ProjectDao;
import com.qbank.dao.ProjectRecordDao;
import com.qbank.entity.Project;
import com.qbank.entity.ProjectRecord;
import com.qbank.entity.User;
/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:56:56
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
@Repository
public class ProjectRecordDaoImpl extends BaseDaoImpl<ProjectRecord, String>
		implements ProjectRecordDao {
	
	@Resource
	ProjectDao projectDao;

	@Override
	public List<Project> getProjectListByUser(User user) {
		// TODO Auto-generated method stub
//		String hql = "select project from Project as project, ProjectRecord as projectRecord where project.id = projectRecord.projectId and projectRecord.user = :user";
//		
//		return getSession().createQuery(hql).setParameter("user", user).list();
		List<ProjectRecord> projectRecordList = this.getProjectRecordListById(user);
		List<Project> projectList = new ArrayList<Project>();
		for (int i = 0; i < projectRecordList.size(); i++) {
			projectList.add(projectDao.getInfoById(projectRecordList.get(i).getProjectId()));
		}
		return projectList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectRecord> getProjectRecordListById(User user) {
		// TODO Auto-generated method stub
		String hql = "from ProjectRecord as projectRecord where projectRecord.user = :user";
		
		return getSession().createQuery(hql).setParameter("user", user).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProjectRecord> getRecordById(String id) {
		// TODO Auto-generated method stub
		String hql = "from ProjectRecord as r where r.projectId = :id";
		return getSession().createQuery(hql).setParameter("id", id).list();
	}

	@Override
	public BigDecimal getInvestAll() {
		// TODO Auto-generated method stub		
		String hql = "select sum(incestAmount) from  ProjectRecord" ;
		return new BigDecimal(getSession().createQuery(hql).uniqueResult().toString()) ;
	}

}
