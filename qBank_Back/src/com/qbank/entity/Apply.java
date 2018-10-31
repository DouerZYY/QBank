package com.qbank.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


import org.compass.annotations.Searchable;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-3 下午3:14:34 
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class Apply extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String applyName;//申请人姓名
	private String idNumber;//申请人身份证
	private BigDecimal applyAmount;//申请人申请资金
	private Integer applyTime;//借款时间长度，369
	private Attachment attachment;//附件到时候改成对象
	private Integer payDate;//选择到账时间
	private Integer applyStatus;//借款申请状态
	private User applyUser;//已注册用户借款申请
	@Column(length=20)
	public String getApplyName() {
		return applyName;
	}
	public void setApplyName(String applyName) {
		this.applyName = applyName;
	}
	@Column(length=20)
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public BigDecimal getApplyAmount() {
		return applyAmount;
	}
	public void setApplyAmount(BigDecimal applyAmount) {
		this.applyAmount = applyAmount;
	}
	
	
	@ManyToOne(fetch=FetchType.LAZY)
	public Attachment getAttachment() {
		return attachment;
	}
	public void setAttachment(Attachment attachment) {
		this.attachment = attachment;
	}
	
	public Integer getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(Integer applyTime) {
		this.applyTime = applyTime;
	}
	public Integer getPayDate() {
		return payDate;
	}
	public void setPayDate(Integer payDate) {
		this.payDate = payDate;
	}
	public Integer getApplyStatus() {
		return applyStatus;
	}
	public void setApplyStatus(Integer applyStatus) {
		this.applyStatus = applyStatus;
	}
	
	@OneToOne(fetch=FetchType.LAZY)
	public User getApplyUser() {
		return applyUser;
	}
	public void setApplyUser(User applyUser) {
		this.applyUser = applyUser;
	}
	
	

}
