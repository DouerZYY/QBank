package com.qbank.dao.impl;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.qbank.dao.ProjectDao;
import com.qbank.entity.Project;

@Repository
public class ProjectDaoImpl extends BaseDaoImpl<Project, String> implements
		ProjectDao {

	@Override
	public List<Project> getPro(Integer num) {
		// TODO Auto-generated method stub
		
		return null;
	}
	
	@Override
	public Project getInfoById(String id) {
		// TODO Auto-generated method stub
		String hql = "from Project as project where project.id = :id";
		
		return (Project) getSession().createQuery(hql).setParameter("id", id).uniqueResult();
	}


}
