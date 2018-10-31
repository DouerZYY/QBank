package com.qbank.entity;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**@author  作者: littleVv
 **@date 创建时间：2016-3-4 AM
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class Rates extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer rateType;//利率类型，引用网站的数据字典
	private BigDecimal rateAmount;//利率数值
	private Integer isEnable;//是否启用该利率
	private String rateCode;//利率代码
	public Integer getRateType() {
		return rateType;
	}
	public void setRateType(Integer rateType) {
		this.rateType = rateType;
	}
	
	
	public BigDecimal getRateAmount() {
		return rateAmount;
	}
	public void setRateAmount(BigDecimal rateAmount) {
		this.rateAmount = rateAmount;
	}
	public Integer getIsEnable() {
		return isEnable;
	}
	public void setIsEnable(Integer isEnable) {
		this.isEnable = isEnable;
	}
	@Column(length=20)
	public String getRateCode() {
		return rateCode;
	}
	public void setRateCode(String rateCode) {
		this.rateCode = rateCode;
	}
	

}
