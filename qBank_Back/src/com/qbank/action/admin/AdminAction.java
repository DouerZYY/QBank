package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.beans.BeanUtils;
import com.qbank.entity.Admin;
import com.qbank.service.AdminService;

/**
 * 管理员action类
 * @author Administrator
 *
 */

public class AdminAction extends BaseAdminAction {

	private static final long serialVersionUID = 1L;
	/**
	 * 管理员对象
	 */
	private Admin admin;//管理员对象
	/**
	 * 管理员列表
	 */
	private List<Admin> adminList;
	
	@Resource
	AdminService adminService;
	
	/**
	 * 
	 * 功能描述：管理员列表
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		adminList = adminService.getAll();
		if(adminList.isEmpty()){
			isNull = 1;
		}
		return LIST;
	}
	/**
	 * 
	 * 功能描述：管理员信息添加
	 * 输入参数：
	 * 返回类型：String
	 */
	public String add(){
		return "input";
	}
	/**
	 * 
	 * 功能描述：管理员信息保存
	 * 输入参数：
	 * 返回类型：String
	 */
	public String save(){
		adminService.save(admin);
		adminList = adminService.getAll();
		if(adminList.isEmpty()){
			isNull = 1;
		}
		return LIST;
	}
	/**
	 * 
	 * 功能描述：管理员信息编辑
	 * 输入参数：
	 * 返回类型：String
	 */
	public String edit(){
		admin = adminService.load(id);
		return INPUT;
	}
	/**
	 * 
	 * 功能描述：管理员信息更新
	 * 输入参数：
	 * 返回类型：String
	 */
	public String update(){
		Admin ad = adminService .load(id);
		BeanUtils.copyProperties(admin, ad, new String[]{"id", "createDate", "modifyDate"});
		adminService.update(ad);
		adminList = adminService.getAll();
		if(adminList.isEmpty()){
			isNull = 1;
		}
		return LIST;
	}
	/**
	 * 
	 * 功能描述：管理员信息删除
	 * 输入参数：
	 * 返回类型：String
	 */
	public String delete(){
		adminService.delete(id);
		adminList = adminService.getAll();
		if(adminList.isEmpty()){
			isNull = 1;
		}
		return LIST;
	}	

	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public List<Admin> getAdminList() {
		return adminList;
	}

	public void setAdminList(List<Admin> adminList) {
		this.adminList = adminList;
	}
	
}
