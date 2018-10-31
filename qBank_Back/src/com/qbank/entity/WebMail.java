package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

import org.compass.annotations.Searchable;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 网站站内信
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class WebMail extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin ;//发送人ID
	private String sendName;//发送人名称
	private User user;//接收人ID
	private Integer isRead;//是否已读
	private String content;//信息内容
	private String title;//消息标题
	
	@ManyToOne(fetch=FetchType.LAZY)
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	@Column(length=60)
	public String getSendName() {
		return sendName;
	}
	public void setSendName(String sendName) {
		this.sendName = sendName;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getIsRead() {
		return isRead;
	}
	public void setIsRead(Integer isRead) {
		this.isRead = isRead;
	}
	public String getContent() {
		return content;
	}
	@Column(length=500)
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	@Column(length=200)
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	
	

}
