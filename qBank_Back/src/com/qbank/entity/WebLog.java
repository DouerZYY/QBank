package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 网站日志管理
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
public class WebLog extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin;//操作人
	private String operateIp;//操作IP
	private String operateAction;//什么操作
	private Integer time;//操作次数
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(nullable=false)
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	@Column(length=20)
	public String getOperateIp() {
		return operateIp;
	}
	public void setOperateIp(String operateIp) {
		this.operateIp = operateIp;
	}
	@Column(length=20)
	public String getOperateAction() {
		return operateAction;
	}
	public void setOperateAction(String operateAction) {
		this.operateAction = operateAction;
	}
	public Integer getTime() {
		return time;
	}
	public void setTime(Integer time) {
		this.time = time;
	}
	
	
}
