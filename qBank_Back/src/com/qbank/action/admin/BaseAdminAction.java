package com.qbank.action.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qbank.bean.Pager;


/**
 * Admin管理Action基类
 * @author Administrator
 *
 */
public class BaseAdminAction extends ActionSupport {

	private static final long serialVersionUID = 6718838822334455667L;
	
	public static final String VIEW = "view";
	public static final String LIST = "list";
	public static final String SUCCESS = "success";
	public static final String ERROR = "error";
	public static final String REDIRECT = "redirect";
	
	public static final String STATUS_PARAMETER_NAME = "status";// 操作状态参数名称
	public static final String MESSAGE_PARAMETER_NAME = "message";// 操作消息参数名称
	public   Integer isNull=0;
	public Pager pager;
	
	/**
	 * 操作状态枚举类型
	 * @author Administrator
	 *
	 */
	public enum Status {
		warn, error, success
	}
	
	protected String id;
	protected String[] ids;
	protected String logInfo;// 日志记录信息
	protected String redirectUrl;// 跳转URL
	protected String base="qbank";
	
	public String input() {
		return null;
	}

	
	
	/**
	 * 
	 * 功能描述： 获取Attribute
	 * 输入参数：属性名称
	 * 返回类型：Object
	 */
	
	public Object getAttribute(String name) {
		return ServletActionContext.getRequest().getAttribute(name);
	}
	
	/**
	 * 
	 * 功能描述： 存入Attribute
	 * 输入参数：属性名称，属性值
	 * 返回类型：Object
	 */
	public void setAttribute(String name, Object value) {
		ServletActionContext.getRequest().setAttribute(name, value);
	}
	/**
	 * 
	 * 功能描述：  获取Parameter
	 * 输入参数：Parameter名称
	 * 返回类型：Object
	 */
	public String getParameter(String name) {
		return getRequest().getParameter(name);
	}
	
	/**
	 * 
	 * 功能描述： 获取Parameter数组
	 * 输入参数：数组名称
	 * 返回类型：Object
	 */
	public String[] getParameterValues(String name) {
		return getRequest().getParameterValues(name);
	}
	
	/**
	 * 
	 * 功能描述： 获取Session
	 * 输入参数：session名称
	 * 返回类型：Object
	 */
	public Object getSession(String name) {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		return session.get(name);
	}
	/**
	 * 
	 * 功能描述： 获取Session
	 * 输入参数：无
	 * 返回类型：Object
	 */
	public Map<String, Object> getSession() {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		return session;
	}
	/**
	 * 
	 * 功能描述： 设置Session
	 * 输入参数：session Key值，value值
	 * 返回类型：Object
	 */
	public void setSession(String name, Object value) {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		session.put(name, value);
	}
	/**
	 * 
	 * 功能描述：获取Request
	 * 输入参数：无
	 * 返回类型：Object
	 */
	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}
	/**
	 * 
	 * 功能描述：获取Response
	 * 输入参数：无
	 * 返回类型：Object
	 */
	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}
	/**
	 * 
	 * 功能描述： 获取Application
	 * 输入参数：无
	 * 返回类型：Object
	 */
	public ServletContext getApplication() {
		return ServletActionContext.getServletContext();
	}
	/**
	 * 
	 * 功能描述： AJAX输出，返回null
	 * 输入参数：内容，内容类型
	 * 返回类型：null
	 */
	public String ajax(String content, String type) {
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType(type + ";charset=UTF-8");
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			response.getWriter().write(content);
			response.getWriter().flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 
	 * 功能描述：根据文本内容输出AJAX，返回null
	 * 输入参数：文本
	 * 返回类型：null
	 */
	public String ajax(String text) {
		return ajax(text, "text/plain");
	}
	/**
	 * 
	 * 功能描述： 根据操作状态输出AJAX
	 * 输入参数：操作状态
	 * 返回类型：null
	 */
	public String ajax(Status status) {
		Map<String, String> jsonMap = new HashMap<String, String>();
		jsonMap.put(STATUS_PARAMETER_NAME, status.toString());
		JSONObject jsonObject = JSONObject.fromObject(jsonMap);
		return ajax(jsonObject.toString());
	}
	/**
	 * 
	 * 功能描述：根据操作状态、消息内容输出AJAX，
	 * 输入参数：操作状态，消息内容
	 * 返回类型：null
	 */	
	public String ajax(Status status, String message) {
		Map<String, String> jsonMap = new HashMap<String, String>();
		jsonMap.put(STATUS_PARAMETER_NAME, status.toString());
		jsonMap.put(MESSAGE_PARAMETER_NAME, message);
		JSONObject jsonObject = JSONObject.fromObject(jsonMap);
		return ajax(jsonObject.toString());
	}
	/**
	 * 
	 * 功能描述：根据Json Map输出AJAX，
	 * 输入参数：Json Map
	 * 返回类型：null
	 */
	public String ajax(Map<String, Object> jsonMap) {
		JSONObject jsonObject = JSONObject.fromObject(jsonMap);
		return ajax(jsonObject.toString());
	}
	/**
	 * 
	 * 功能描述：  根据boolean状态输出AJAX
	 * 输入参数：boolean状态
	 * 返回类型：null
	 */	
	public String ajax(boolean booleanStatus) {
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put(STATUS_PARAMETER_NAME, booleanStatus);
		JSONObject jsonObject = JSONObject.fromObject(jsonMap);
		return ajax(jsonObject.toString());
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String[] getIds() {
		return ids;
	}

	public void setIds(String[] ids) {
		this.ids = ids;
	}

	

	public String getLogInfo() {
		return logInfo;
	}

	public void setLogInfo(String logInfo) {
		this.logInfo = logInfo;
	}

	public String getRedirectUrl() {
		return redirectUrl;
	}

	public Integer getIsNull() {
		return isNull;
	}

	public void setIsNull(Integer isNull) {
		this.isNull = isNull;
	}
	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}
	
	public String getBase() {
		return base;
	}
	public void setBase(String base) {
		this.base = base;
	}

	

}