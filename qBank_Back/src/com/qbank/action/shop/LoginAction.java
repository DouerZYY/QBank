package com.qbank.action.shop;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.qbank.entity.Code;
import com.qbank.entity.User;
import com.qbank.service.CodeService;
import com.qbank.service.UserService;
import com.qbank.util.CommonUtil;

public class LoginAction extends BaseShopAction {
	
	private static final long serialVersionUID = 6116451131310220671L;
	
	@Resource
	private UserService userService;
	@Resource 
	private CodeService codeService;
	
	private User user;
	private Code code;
	
	private String phoneNumber;
	

	public String index(){

		return "login";
	}	
	
	public String login(){
		User user_t = userService.getUserByPhoneNumber(user.getPhoneNumber());
		  
		if(user_t!=null&&user_t.getPassword().equals(user.getPassword())){
			ActionContext actionContext = ActionContext.getContext();
		    actionContext.getSession().put("user", user_t);
		    System.out.println(actionContext.getSession().get("user"));
			return "success";
		}
		return "login";
	}
	
	public void code(){
		System.out.println(phoneNumber);
		User user_t = userService.getUserByPhoneNumber(phoneNumber);
		Code code_t = codeService.getCodeByUser(user_t);
		String code_temp = CommonUtil.getrandomCode(4);
		if(code_t!=null){
			code_t.setCode(code_temp);
			codeService.update(code_t);
		}else{
			code = new Code();
			code.setUser(user_t);
			code.setCode(code_temp);
			codeService.save(code);
		}
	}
	
	public String login2(){
		User user_t = userService.getUserByPhoneNumber(user.getPhoneNumber());
		Code code_t = codeService.getCodeByUser(user_t);
		if(code.getCode().equals(code_t.getCode())&&code.getCode()!=null){
			ActionContext actionContext = ActionContext.getContext();
		    actionContext.getSession().put("user", user_t);
		    codeService.delete(code_t);
		    return "success";
		}
		return "login";
	}
	
	public String logout(){
		ActionContext actionContext = ActionContext.getContext();
	    actionContext.getSession().remove("user");
	    return index();
	}
	

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Code getCode(){
		return code;
	}
	public void setCode(Code code) {
		this.code = code;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
}
