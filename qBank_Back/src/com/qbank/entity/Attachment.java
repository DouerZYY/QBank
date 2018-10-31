package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**@author  作者: littleVv
 **@date 创建时间：2016-3-3 下午3:14:34 附件管理
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class Attachment extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String attachmentName;//附件名称
	private Integer attachmentType;//附件类型，1图片，2，文件，3，压缩包，4其他
	private String attachmentUrl;//附件路径
	public String getAttachmentName() {
		return attachmentName;
	}
	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}
	public Integer getAttachmentType() {
		return attachmentType;
	}
	public void setAttachmentType(Integer attachmentType) {
		this.attachmentType = attachmentType;
	}
	@Column(length=100)
	public String getAttachmentUrl() {
		return attachmentUrl;
	}
	public void setAttachmentUrl(String attachmentUrl) {
		this.attachmentUrl = attachmentUrl;
	}
	
	
}
