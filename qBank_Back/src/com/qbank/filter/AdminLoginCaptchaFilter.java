package com.qbank.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Component;

import com.qbank.util.CaptchaUtil;

/**
 * 拦截�?- 后台登录验证�?
 * ============================================================================
 */

@Component
public class AdminLoginCaptchaFilter implements Filter {

	public static final String ADMIN_CAPTCHA_ERROR_URL = "/admin/page!login.action?error=captcha";// 后台登录验证失败跳转URL

	public void init(FilterConfig filterConfig) throws ServletException {}

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		if (CaptchaUtil.validateCaptchaByRequest(request)) {
			filterChain.doFilter(request, response);
		} else {
			response.sendRedirect(request.getContextPath() + ADMIN_CAPTCHA_ERROR_URL);
		}
	}
	
	public void destroy() {}

}