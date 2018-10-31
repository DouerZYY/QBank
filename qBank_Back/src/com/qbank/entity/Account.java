package com.qbank.entity;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
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
public class Account extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private User user;//用户ID
	private BigDecimal amount;//用户账户可投资金
	private BigDecimal frozenAmount;//用户账户冻结资金。投资冻结和提现冻结的资金
	private BigDecimal totalAmount;//用户总资产，冻结资金加上可以投资的资金
	private BigDecimal allProfit;//总收益
	private BigDecimal inProfit;// daishou收益
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(nullable=false)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public BigDecimal getFrozenAmount() {
		return frozenAmount;
	}
	public void setFrozenAmount(BigDecimal frozenAmount) {
		this.frozenAmount = frozenAmount;
	}
	public BigDecimal getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}
	public BigDecimal getAllProfit() {
		return allProfit;
	}
	public void setAllProfit(BigDecimal allProfit) {
		this.allProfit = allProfit;
	}
	public BigDecimal getInProfit() {
		return inProfit;
	}
	public void setInProfit(BigDecimal inProfit) {
		this.inProfit = inProfit;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
