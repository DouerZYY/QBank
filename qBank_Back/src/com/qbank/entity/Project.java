package com.qbank.entity;



import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;
import org.compass.annotations.Searchable;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 项目表
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class Project extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BigDecimal loanAmount;//借款额度
	private String projectName;//项目名称
	private Integer projectRate;//项目利率
	private Integer repayType;//项目还款方式
	private String loanDetail;//项目还款详情
	private Integer pledgeType;//抵押方式
	private Date startTime;//项目开始时间
	private Date endTime;//项目结束时间
	private User user;//借款人ID
	private String projectImageUrl;
	private BigDecimal investAmount;//项目可投资金
	private Integer term;//项目期限，对应于字典信息中的，3，6,9,12
	private Integer status;//项目状态，可投资0，还款中1，已还款2
	
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getTerm() {
		return term;
	}
	public void setTerm(Integer term) {
		this.term = term;
	}
	public BigDecimal getInvestAmount() {
		return investAmount;
	}
	public void setInvestAmount(BigDecimal investAmount) {
		this.investAmount = investAmount;
	}
	public BigDecimal getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(BigDecimal loanAmount) {
		this.loanAmount = loanAmount;
	}
	@Column(length=40)
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public Integer getProjectRate() {
		return projectRate;
	}
	public void setProjectRate(Integer projectRate) {
		this.projectRate = projectRate;
	}
	public Integer getRepayType() {
		return repayType;
	}
	public void setRepayType(Integer repayType) {
		this.repayType = repayType;
	}
	@Column(length=3000)
	public String getLoanDetail() {
		return loanDetail;
	}
	public void setLoanDetail(String loanDetail) {
		this.loanDetail = loanDetail;
	}
	public Integer getPledgeType() {
		return pledgeType;
	}
	public void setPledgeType(Integer pledgeType) {
		this.pledgeType = pledgeType;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	@OneToOne(fetch=FetchType.LAZY)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getProjectImageUrl() {
		return projectImageUrl;
	}
	public void setProjectImageUrl(String projectImageUrl) {
		this.projectImageUrl = projectImageUrl;
	}
	
	
	
	

}
