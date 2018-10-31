package com.qbank.action.admin;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.qbank.entity.Admin;
import com.qbank.service.AdminService;

/**
 * 管理员登陆Action类
 * @author Administrator
 *
 */
public class LoginAction extends BaseAdminAction {

	/**
	 * 
	 */
	private Admin admin;
	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Resource
	AdminService adminService;
	
	private static final long serialVersionUID = -8158937097103148604L;
	
	/**
	 * 
	 * 功能描述：登陆页面进入
	 * 输入参数：
	 * 返回类型：String
	 */
	public String login(){
		return "login";
	}
	
	/**
	 * 
	 * 功能描述：管理员登陆验证
	 * 输入参数：无
	 * 返回类型：void
	 */
	public String login2(){  
		System.out.println(admin.getAdminName());
		System.out.println(admin.getAdminPassword());
		HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        Admin admin_t =  adminService.getInfoByName(admin.getAdminName());
        if(admin_t==null){
        	return Action.ERROR;
        }
        
        String password =  admin.getAdminPassword();
        if(password!=null&&password.equals(admin_t.getAdminPassword())){
			session.setAttribute("adminName", admin.getAdminName());
	        session.setAttribute("adminId", admin.getId());
	        return Action.SUCCESS;
        }
        return Action.ERROR;
	}
	
	/**
	 * 
	 * 功能描述：管理员登出
	 * 输入参数：
	 * 返回类型：void
	 */
	public void logout(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
        HttpSession session = request.getSession();      
        String contextPath=request.getContextPath();
        session.removeAttribute("adminName");
		try {
			response.sendRedirect(contextPath+"/admin/login!login.action");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
