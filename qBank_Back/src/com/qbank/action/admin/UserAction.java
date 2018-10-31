
package com.qbank.action.admin;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeanUtils;

import com.qbank.entity.Account;
import com.qbank.entity.Dictionary;
import com.qbank.entity.Grade;
import com.qbank.entity.User;
import com.qbank.service.AccountService;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;
import com.qbank.service.GradeService;
import com.qbank.service.UserService;

/**
 * 用户信息管理Action类
 * @author Administrator
 *
 */
public class UserAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1506975362617469594L;
	
	private User user;
	private List<User> userList;
	private List<Dictionary> dicList;//结婚字典类型信息列表
	private List<Dictionary> xlList;//学历字典信息列表
	private List<Grade> gradeList;//用户等级列表
	private	List<String> notList;//通知设置表格
	@Resource
	UserService userService;
	@Resource
	GradeService gradeService;
	@Resource
	DictionaryService dicService;
	@Resource
	DicTypeService dicTypeService;
	@Resource
	AccountService accountService;
	
	/**
	 * 
	 * 功能描述：获取用户信息列表
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		gradeList = gradeService.getAll();
		pager = userService.findByPager(pager);
		return LIST;
	}
	
	/**
	 * 
	 * 功能描述：用户信息添加
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		xlList = dicService.getDicByCode(dicTypeService.getTypeByCode("XLLX"));
		dicList = dicService.getDicByCode(dicTypeService.getTypeByCode("marriage"));
		gradeList = gradeService.getAll();
		return "input";
	}
	
	/**
	 * 
	 * 功能描述：用户信息保存
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save(){
		userService.save(user);
		Account account = new Account();//創建一個新的賬戶，為新添加的用戶
		account.setAmount(new BigDecimal(0));//賬戶的初始值0
		account.setFrozenAmount(new BigDecimal(0));
		account.setTotalAmount(new BigDecimal(0));
		account.setAllProfit(new BigDecimal(0));
		account.setInProfit(new BigDecimal(0));
		account.setUser(user);
		accountService.save(account);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：用户信息删除
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String delete(){
		userService.delete(id);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：用户信息编辑
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		HttpServletRequest request = ServletActionContext.getRequest();
		user = userService.get(id);
		String n1=user.getNotifition().substring(0,5);//截取通知设置字符串，充值操作
		String n2=user.getNotifition().substring(5,10);//截取通知设置字符串，提现操作
		String n3=user.getNotifition().substring(10,15);//截取通知设置字符串，投资成功
		String n4=user.getNotifition().substring(15,20);//截取通知设置字符串，还本付息
		request.setAttribute("cz", n1);//充值操作
		request.setAttribute("tx", n2);//提现操作
		request.setAttribute("tz", n3);//投资成功
		request.setAttribute("hb", n4);//还本付息
		xlList = dicService.getDicByCode(dicTypeService.getTypeByCode("XLLX"));
		dicList = dicService.getDicByCode(dicTypeService.getTypeByCode("marriage"));
		gradeList = gradeService.getAll();
		return "input";
	}
	/**
	 * 
	 * 功能描述：用户信息更新
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update(){
		User u = userService.load(id);//根据页面获取以前对象
		BeanUtils.copyProperties(user, u, new String[]{"id", "createDate", "modifyDate"});//将修改后的对象rates的部分属性拷贝给原来的对象
		userService.update(u);//更新数据
		return list();
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public List<Dictionary> getDicList() {
		return dicList;
	}

	public void setDicList(List<Dictionary> dicList) {
		this.dicList = dicList;
	}

	public List<Dictionary> getXlList() {
		return xlList;
	}

	public void setXlList(List<Dictionary> xlList) {
		this.xlList = xlList;
	}

	public List<Grade> getGradeList() {
		return gradeList;
	}

	public void setGradeList(List<Grade> gradeList) {
		this.gradeList = gradeList;
	}

	public List<String> getNotList() {
		return notList;
	}

	public void setNotList(List<String> notList) {
		this.notList = notList;
	}

	
	
	
	
	
	

}
