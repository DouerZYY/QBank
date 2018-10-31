package com.qbank.filter;

import java.util.Arrays;

import javax.servlet.FilterConfig;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

import com.opensymphony.oscache.base.Cache;
import com.opensymphony.oscache.web.ServletCacheAdministrator;
import com.opensymphony.oscache.web.filter.CacheFilter;

/**
 * 拦截�?- 页面缓存
 * ============================================================================
 */

public class PageCacheFilter extends CacheFilter {

	private static final String GROUPS_PARAMETER_NAME = "groups";
	private static final String PARAMETER_KEYS_PARAMETER_NAME = "parameterKeys";
	private static final String KEYS_SEPARATOR = "_";
	private String[] groups;
	private String[] parameterKeys;
	
	public void init(FilterConfig filterConfig) {
		super.init(filterConfig);
		String groupsParameter = filterConfig.getInitParameter(GROUPS_PARAMETER_NAME);
		if (groupsParameter != null) {
			groups = groupsParameter.split(",");
		}
		String parameterKeysParameter = filterConfig.getInitParameter(PARAMETER_KEYS_PARAMETER_NAME);
		if (parameterKeysParameter != null) {
			parameterKeys = parameterKeysParameter.split(",");
		}
	}
	
	@Override
	public String[] createCacheGroups(HttpServletRequest httpRequest, ServletCacheAdministrator scAdmin, Cache cache) {
		if (groups != null) {
			return groups;
		} else {
			return super.createCacheGroups(httpRequest, scAdmin, cache);
		}
	}

	@Override
	public String createCacheKey(HttpServletRequest httpRequest, ServletCacheAdministrator scAdmin, Cache cache) {
		if (parameterKeys != null && parameterKeys.length > 0) {
			StringBuffer keyStringBuffer = new StringBuffer(httpRequest.getRequestURI());
			Arrays.sort(parameterKeys);
			for (String parameterKey : parameterKeys) {
				if (StringUtils.isNotEmpty(parameterKey)) {
					String parameterKeyValue = httpRequest.getParameter(parameterKey);
					if (StringUtils.isNotEmpty(parameterKeyValue)) {
						keyStringBuffer.append(KEYS_SEPARATOR);
						keyStringBuffer.append(parameterKey);
						keyStringBuffer.append(KEYS_SEPARATOR);
						keyStringBuffer.append(parameterKeyValue);
					}
				}
			}
			return keyStringBuffer.toString();
		} else {
			return super.createCacheKey(httpRequest, scAdmin, cache);
		}
	}

}