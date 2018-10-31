package com.qbank.entity;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


import org.compass.annotations.Searchable;

/**@author  作者:LittleVv
 **@date 创建时间：2016-3-3 下午3:14:34 
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class AccountRecord extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer actionType;//操作类型，1提现，2投资，3还是债券转让,4shouyi
	private BigDecimal amount;//操作金额
	private User user;//用户ID，交易流水对应一个人的账户
	public Integer getActionType() {
		return actionType;
	}
	public void setActionType(Integer actionType) {
		this.actionType = actionType;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	//一个用户的ID对应多条交易流水
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(nullable=false)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	

}
