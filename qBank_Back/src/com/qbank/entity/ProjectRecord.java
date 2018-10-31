package com.qbank.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 项目交易流水
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
public class ProjectRecord extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;//投资人ID
	private String zqNumber;
	private String userName;//投资人名称
	private BigDecimal incestAmount;//投资金额
	private Integer payStatus;//支付状态
	private Integer isWard;//是否获奖
	private Date investTime;//投资时间
	private Integer investNumber;//投资序号
	private String projectId; //项目ID
	
	@Column(length=40)
	public String getZqNumber() {
		return zqNumber;
	}
	public void setZqNumber(String zqNumber) {
		this.zqNumber = zqNumber;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Column(length=20)
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public BigDecimal getIncestAmount() {
		return incestAmount;
	}
	public void setIncestAmount(BigDecimal incestAmount) {
		this.incestAmount = incestAmount;
	}
	public Integer getPayStatus() {
		return payStatus;
	}
	public void setPayStatus(Integer payStatus) {
		this.payStatus = payStatus;
	}
	public Integer getIsWard() {
		return isWard;
	}
	public void setIsWard(Integer isWard) {
		this.isWard = isWard;
	}
	public Date getInvestTime() {
		return investTime;
	}
	public void setInvestTime(Date investTime) {
		this.investTime = investTime;
	}
	public Integer getInvestNumber() {
		return investNumber;
	}
	public void setInvestNumber(Integer investNumber) {
		this.investNumber = investNumber;
	}
	
}
