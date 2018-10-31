/**
 * 
 */
package com.qbank.entity;

import javax.persistence.Entity;

import org.compass.annotations.Searchable;

/**
 * @author Joy
 *
 */

@Entity
@Searchable
public class Card extends BaseEntity {

	/**
	 * @Author		LXN		 
	 * @Todo		TODO
	 * @CreateTime	2016年4月27日上午10:07:51
	 */
	private static final long serialVersionUID = 1L;
	
	private String user;				//用户ID
	private String cardNumber;			//卡号
	private String name;				//卡主
	private String phone;				//卡主电话号码
	private String bank;				//卡所属银行  
	
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	
	
	
	
}
