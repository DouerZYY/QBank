package com.qbank.entity;

import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 网站文章类型管理
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class ArticleType extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String typeName;//文章类型名称
	private String artTypeCode;//文章类型编码
	private String parentId;//
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	
	public String getArtTypeCode() {
		return artTypeCode;
	}
	public void setArtTypeCode(String artTypeCode) {
		this.artTypeCode = artTypeCode;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	
	

}
