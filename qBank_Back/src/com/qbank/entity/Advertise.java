package com.qbank.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 广告管理
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class Advertise extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String adName;//广告名称
	private String adUrl;//广告Banner图片存储路径
	private Date startTime;//广告开始时间
	private Date endTime;//广告结束时间
	private Integer adPositon;//广告位置编码
	
	@Column(length=40)
	public String getAdName() {
		return adName;
	}
	public void setAdName(String adName) {
		this.adName = adName;
	}
	@Column(length=100)
	public String getAdUrl() {
		return adUrl;
	}
	public void setAdUrl(String adUrl) {
		this.adUrl = adUrl;
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
	public Integer getAdPositon() {
		return adPositon;
	}
	public void setAdPositon(Integer adPositon) {
		this.adPositon = adPositon;
	}
	

}
