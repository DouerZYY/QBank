package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

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
public class DicType extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String dicTypeName;//字典类型名称
	private String dicTypeCode;//字典信息编码
	private Integer typeOrder;//字典顺序
	
	@Column(length=20)
	public String getDicTypeName() {
		return dicTypeName;
	}
	public void setDicTypeName(String dicTypeName) {
		this.dicTypeName = dicTypeName;
	}
	@Column(length=20)
	public String getDicTypeCode() {
		return dicTypeCode;
	}
	public void setDicTypeCode(String dicTypeCode) {
		this.dicTypeCode = dicTypeCode;
	}
	public Integer getTypeOrder() {
		return typeOrder;
	}
	public void setTypeOrder(Integer typeOrder) {
		this.typeOrder = typeOrder;
	}
	
	
	

}
