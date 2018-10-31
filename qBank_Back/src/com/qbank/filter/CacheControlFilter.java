package com.qbank.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

/**
 * 拦截�?- 客户端缓存控�?
 * ============================================================================
 */

public class CacheControlFilter implements Filter {

	private static final String EXPIRATION_TIME_PARAMETER_NAME = "expirationTime";
	private long expirationTime = 0;// 单位：秒�?表示不缓�?
	
	public void init(FilterConfig filterConfig) {
		String expirationTimeParameter = filterConfig.getInitParameter(EXPIRATION_TIME_PARAMETER_NAME);
		if (expirationTimeParameter != null) {
			expirationTime = Long.valueOf(expirationTimeParameter);
		}
	}

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		if (!response.isCommitted()) {
			if (expirationTime > 0) {
				response.setDateHeader("Expires", System.currentTimeMillis() + expirationTime * 1000);
				response.setHeader("Cache-Control",  "private, max-age=" + expirationTime);
			} else {
				response.setHeader("progma", "no-cache");
				response.setHeader("Cache-Control", "no-cache");
				response.setHeader("Cache-Control", "no-store");
				response.setDateHeader("Expires", 0);
			}
		}
		chain.doFilter(servletRequest, servletResponse);
	}

	public void destroy() {}

}