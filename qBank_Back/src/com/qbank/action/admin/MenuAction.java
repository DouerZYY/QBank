package com.qbank.action.admin;
/**
 * 后台管理菜单Action类
 * @author Administrator
 *
 */
public class MenuAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 
	 * 功能描述：管理员菜单
	 * 输入参数：
	 * 返回类型：String
	 */
	public String admin(){
		return "admin";
	}
	/**
	 * 
	 * 功能描述：网站设置菜单
	 * 输入参数：
	 * 返回类型：String
	 */
	public String setting(){
		return "setting";
	}

	/**
	 * 
	 * 功能描述：申请管理菜单
	 * 输入参数：
	 * 返回类型：String
	 */
	public String apply(){
		return "apply";
	}
	
	/**
	 * 
	 * 功能描述：项目管理菜单
	 * 输入参数：
	 * 返回类型：String
	 */
	public String project(){
		return "project";
	}
	
	/**
	 * 
	 * 功能描述：用户管理菜单
	 * 输入参数：
	 * 返回类型：String
	 */
	public String member (){
		return "member";
	}
	
	

}
