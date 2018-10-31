/**
 * 
 */
package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.compass.annotations.Searchable;

/**
 * @author Joy
 *
 */


@Entity
@Searchable
public class Code extends BaseEntity {

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年5月4日上午10:59:23
	 */
	private static final long serialVersionUID = 1L;
	
	private User user;
	private String code;
	
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(nullable=false)
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Column(length=10)
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	
}
