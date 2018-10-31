package com.qbank.dao;


import java.util.List;

import com.qbank.entity.Project;

/**@author  作者: Joy
 **@date 创建时间: 2016年3月9日上午10:19:59
 **@version v1.0
 **@parameter 
 **@since  
 **@return  
 **/
public interface ProjectDao extends BaseDao<Project, String> {
	
	public List<Project> getPro(Integer num);
	public Project getInfoById(String id);
}
