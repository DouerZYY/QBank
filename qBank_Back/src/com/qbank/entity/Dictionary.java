package com.qbank.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

import org.compass.annotations.Searchable;

/**@author  作者: Littlevv
 **@date 创建时间：2016-3-3 下午3:14:34 
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class Dictionary extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String dicName;//字典字段信息名称
	private String dicCode;//字典信息编码
	private DicType dictype;//字典类型
	private Integer dicOrder;//字典信息顺序
	
	
	public String getDicCode() {
		return dicCode;
	}
	public void setDicCode(String dicCode) {
		this.dicCode = dicCode;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	public DicType getDictype() {
		return dictype;
	}
	public void setDictype(DicType dictype) {
		this.dictype = dictype;
	}
	public Integer getDicOrder() {
		return dicOrder;
	}
	public void setDicOrder(Integer dicOrder) {
		this.dicOrder = dicOrder;
	}
	public String getDicName() {
		return dicName;
	}
	public void setDicName(String dicName) {
		this.dicName = dicName;
	}
	
	
	

}
