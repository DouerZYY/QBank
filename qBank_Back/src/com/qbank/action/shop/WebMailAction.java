package com.qbank.action.shop;

import java.util.List;

import javax.annotation.Resource;

import com.qbank.entity.WebMail;
import com.qbank.service.UserService;
import com.qbank.service.WebMailService;

/** * @author  作者 LittleVv 
 * @date 创建时间：2016年3月14日 上午11:36:49 
 * @version 1.0 
 **/
public class WebMailAction extends BaseShopAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3672717467778483526L;
	
	@Resource
	WebMailService mailService;
	@Resource
	UserService userService;
	private List<WebMail> mailList;
	private String[] mailId;
	
	public String list(){
		String userId = "8a8c092a53872f090153873071400001";//获取用户ID，以后改成登陆用户从session 获取
		mailList =  mailService.getMail(userService.load(userId));
		return "mail";
	}
	
	
	
	
	
	
	public List<WebMail> getMailList() {
		return mailList;
	}
	public void setMailList(List<WebMail> mailList) {
		this.mailList = mailList;
	}
	public String[] getMailId() {
		return mailId;
	}
	public void setMailId(String[] mailId) {
		this.mailId = mailId;
	}
	

}
