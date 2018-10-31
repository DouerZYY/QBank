package com.qbank.action.shop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qbank.bean.Pager;


/**
 * 前台Action类 - 前台基类
 * ============================================================================ 
 */

public class BaseShopAction extends ActionSupport implements ServletRequestAware,ServletResponseAware,ServletContextAware{

	private static final long serialVersionUID = 6718838811223344556L;
	
	public static final String VIEW = "view";
	public static final String LIST = "list";
	public static final String SUCCESS = "success";
	public static final String ERROR = "error";
	public static final String REDIRECT = "redirect";
	public static final String STATUS_PARAMETER_NAME = "status";// 操作状态参数名称
	public static final String MESSAGE_PARAMETER_NAME = "message";// 操作消息参数名称
	
	// 操作状态（警告、错误、成功）
	public enum Status {
		warn, error, success
	}
	
	protected String id;
	protected String[] ids;
	protected String redirectUrl;// 跳转URL
	
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected HttpSession session;
	protected ServletContext application;
	protected Pager pager;
	
	public String input() {
		return null;
	}


	// 获取Attribute
	public Object getAttribute(String name) {
		return ServletActionContext.getRequest().getAttribute(name);
	}

	// 设置Attribute
	public void setAttribute(String name, Object value) {
		ServletActionContext.getRequest().setAttribute(name, value);
	}

	// 获取Parameter
	public String getParameter(String name) {
		return getRequest().getParameter(name);
	}

	// 获取Parameter数组
	public String[] getParameterValues(String name) {
		return getRequest().getParameterValues(name);
	}

	// 获取Session
	public Object getSession(String name) {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		return session.get(name);
	}

	// 获取Session
	public Map<String, Object> getSession() {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		return session;
	}

	// 设置Session
	public void setSession(String name, Object value) {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		session.put(name, value);
	}

	// 获取Request
	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	// 获取Response
	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	// 获取Application
	public ServletContext getApplication() {
		return ServletActionContext.getServletContext();
	}

	// AJAX输出，返回null
	public String ajax(String content, String type) {
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType(type + ";charset=UTF-8");
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			PrintWriter out = response.getWriter();
			out.write(content);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 根据文本内容输出AJAX，返回null
	public String ajax(String text) {
		return ajax(text, "text/plain");
	}
	
	// 根据操作状态输出AJAX，返回null
	public String ajax(Status status) {
		Map<String, String> jsonMap = new HashMap<String, String>();
		jsonMap.put(STATUS_PARAMETER_NAME, status.toString());
		JSONObject jsonObject = JSONObject.fromObject(jsonMap);
		return ajax(jsonObject.toString());
	}
	
	// 根据操作状态、消息内容输出AJAX，返回null
	public String ajax(Status status, String message) {
		Map<String, String> jsonMap = new HashMap<String, String>();
		jsonMap.put(STATUS_PARAMETER_NAME, status.toString());
		jsonMap.put(MESSAGE_PARAMETER_NAME, message);
		JSONObject jsonObject = JSONObject.fromObject(jsonMap);
		return ajax(jsonObject.toString());
	}
	
	// 根据Json Map输出AJAX，返回null
	public String ajax(Map<String, Object> jsonMap) {
		JSONObject jsonObject = JSONObject.fromObject(jsonMap);
		return ajax(jsonObject.toString());
	}
	
	// 根据boolean状态输出AJAX，返回null
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


	public String getRedirectUrl() {
		return redirectUrl;
	}

	public void setRedirectUrl(String redirectUrl) {
		this.redirectUrl = redirectUrl;
	}
	
	public String[] getIds() {
		return ids;
	}

	public void setIds(String[] ids) {
		this.ids = ids;
	}


	@Override
	public void setServletContext(ServletContext application) {
		// TODO Auto-generated method stub
		this.application=application;
	}


	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response=response;
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
		this.session=this.request.getSession();
	}

}