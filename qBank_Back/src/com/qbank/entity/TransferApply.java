package com.qbank.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

import org.compass.annotations.Searchable;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 网站债权转让申请
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class TransferApply extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User fromUser;
	private User toUser;
	private String zqNumber;
	private String creditorName ;//债权承接人姓名
	private String creditorId;//债权承接人身份证号码
	private String transferReason;//债权转让理由
	private BigDecimal transferAmount;//债权转让金额
	private Integer transferStatus;//债权转让状态
	
	
	@Column(length=40)
	public String getCreditorName() {
		return creditorName;
	}
	public void setCreditorName(String creditorName) {
		this.creditorName = creditorName;
	}
	@Column(length=40)
	public String getCreditorId() {
		return creditorId;
	}
	public void setCreditorId(String creditorId) {
		this.creditorId = creditorId;
	}
	@Column(length=225)
	public String getTransferReason() {
		return transferReason;
	}
	public void setTransferReason(String transferReason) {
		this.transferReason = transferReason;
	}
	
	public BigDecimal getTransferAmount() {
		return transferAmount;
	}
	public void setTransferAmount(BigDecimal transferAmount) {
		this.transferAmount = transferAmount;
	}
	public Integer getTransferStatus() {
		return transferStatus;
	}
	public void setTransferStatus(Integer transferStatus) {
		this.transferStatus = transferStatus;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	public User getFromUser() {
		return fromUser;
	}
	public void setFromUser(User fromUser) {
		this.fromUser = fromUser;
	}
	@Column(length=40)
	public String getZqNumber() {
		return zqNumber;
	}
	public void setZqNumber(String zqNumber) {
		this.zqNumber = zqNumber;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	public User getToUser() {
		return toUser;
	}
	public void setToUser(User toUser) {
		this.toUser = toUser;
	}
	
	

}
