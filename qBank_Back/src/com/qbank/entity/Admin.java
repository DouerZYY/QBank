package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**@author  作者: LITTLEvv
 **@date 创建时间：2016-3-3 下午3:14:34 管理员基本信息
 *
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class Admin extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String adminName;//name of admin
	private String adminPassword;//login password
	private Integer role;//what admin
	@Column(length=40)
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	@Column(length=40)
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	

}
