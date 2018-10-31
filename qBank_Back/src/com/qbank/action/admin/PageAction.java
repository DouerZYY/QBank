package com.qbank.action.admin;


import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qbank.entity.Admin;
import com.qbank.entity.Apply;
import com.qbank.service.AdminService;
import com.qbank.service.ApplyService;
import com.qbank.service.ProjectRecordService;
import com.qbank.service.TransferApplyService;
import com.qbank.service.UserService;

/**
 *	菜单管理
 * @author Administrator
 *
 */

public class PageAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String base ="http://localhost:8080/qbank/";
	private Admin admin;
	private List<Apply> applyList;
	@Resource
	AdminService adminService;
	@Resource
	ProjectRecordService recordService;
	@Resource
	ApplyService applyService;
	@Resource
	UserService userService;
	@Resource
	TransferApplyService transService;
	public String getBase() {
		return base;
	}

	public void setBase(String base) {
		this.base = base;
	}

	/**
	 * 
	 * 功能描述：后台管理首页
	 * 输入参数：
	 * 返回类型：String
	 */
	public String main(){
		return "main";
	}
	
	/**
	 * 
	 * 功能描述：后台管理头部
	 * 输入参数：
	 * 返回类型：String
	 */
	public String header(){
		return "header";
	}
	
	/**
	 * 
	 * 功能描述：后台管理中部页面
	 * 输入参数：
	 * 返回类型：String
	 */
	public String middle(){
		return "middle";
	}
	
	/**
	 * 
	 * 功能描述：后台管理首页
	 * 输入参数：
	 * 返回类型：String
	 */
	public String index(){
		HttpServletRequest request = getRequest();
		applyList = applyService.getAll();
		if(applyService.getAll().size()>10){
		applyList = applyList.subList(0, 10);
		}
		pager = recordService.findByPager(pager);//首页项目投资记录表
		Integer memberNum = userService.getMemberNum();//当前平台总的注册用户数目
		Long totalApply = applyService.getTotalCount();//总共借款申请数目
		Long totalTrans = transService.getTotalCount();//总共债权转让申请数目
		BigDecimal totalInvest = recordService.getInvestAll();
		request.setAttribute("totalInvest", totalInvest);
		request.setAttribute("memberNum", memberNum);//当前平台总的用户数目
		request.setAttribute("totalApply", totalApply);
		request.setAttribute("totalTrans", totalTrans);
		return "index";
	}
	public String login(){
		return "login";
	}
	
	public String loginCheck(){  
		HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();      
		Admin admins = adminService.getInfoByName(admin.getAdminName());
		if(null!=admins){
			  session.setAttribute("adminName", admin.getAdminName());
		       session.setAttribute("adminId", admin.getId());
		       return main();
		}else{
			return login();
		}
		
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public List<Apply> getApplyList() {
		return applyList;
	}

	public void setApplyList(List<Apply> applyList) {
		this.applyList = applyList;
	}
	
	
	

}
