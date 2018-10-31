package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 管理员角色管理
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class AdminRole extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String roleName;// 角色名称
	private String rolePower;//角色权限
	private Integer roleCode;//角色编码
	@Column(length=40)
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	@Column(length=40)
	public String getRolePower() {
		return rolePower;
	}
	public void setRolePower(String rolePower) {
		this.rolePower = rolePower;
	}
	@Column(length=40)
	public Integer getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(Integer roleCode) {
		this.roleCode = roleCode;
	}
	
	

}
