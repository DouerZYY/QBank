package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**@author  作者: little
 **@date 创建时间：2016-3-3 下午3:14:34 广告位置管理
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class AdPosition extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String positionName;//位置名称
	private Integer positionCode;//位置编码
	@Column(length=40)
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	public Integer getPositionCode() {
		return positionCode;
	}
	public void setPositionCode(Integer positionCode) {
		this.positionCode = positionCode;
	}
	

}
