package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.qbank.entity.User;
import com.qbank.entity.WebMail;
import com.qbank.service.AdminService;
import com.qbank.service.UserService;
import com.qbank.service.WebMailService;

/**
 * 站内信管理Action类
 * @author Administrator
 *
 */
public class WebMailAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2613531736077330844L;
	private WebMail mail;//用户邮件
	private List<User> userList ;//用户列表
	private User user;//用户
	@Resource
	WebMailService mailService;
	@Resource
	UserService userService;
	@Resource
	AdminService adminService;
	
	public void testAdd(){
		for(int i =0;i<10;i++){
			WebMail mail = new WebMail();
			mail.setAdmin(adminService.load("1"));
			mail.setContent("测试站内信");
			mail.setIsRead(0);
			mail.setUser(userService.load("8a8c092a53872f090153873071400001"));
			mailService.save(mail);
		}
		
	}
	//所有站内信
	public String list(){
		pager = mailService.findByPager(pager);
		return "list";
	}
	public String add(){
		return "input";
	}
	public String send(){
		mail.setIsRead(0);//消息发送时默认为未读
		
		return ""; 
	}
	public String isUser(){
		
		
		return"";
	}

	public WebMail getMail() {
		return mail;
	}

	public void setMail(WebMail mail) {
		this.mail = mail;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	

}
