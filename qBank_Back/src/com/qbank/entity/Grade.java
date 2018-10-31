package com.qbank.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**@author  作者: littleVv	
 **@date 创建时间：2016-3-3 下午3:14:34 
 **@version 1.0 
 **@parameter 信用等级 
 **@since  
 **@return  
 **/

@Entity
@Searchable
public class Grade extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String name;//用户信用等级名称
	private BigDecimal amount;//信用等级借款金额
	private String  level;//信用等级特权 
	private Integer gradeCode;//信用等级编码
	
	@Column(length=60)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	@Column(length=60)
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public Integer getGradeCode() {
		return gradeCode;
	}
	public void setGradeCode(Integer gradeCode) {
		this.gradeCode = gradeCode;
	}
	
	
	
}
