package com.qbank.interceptor;

import java.io.Serializable;
import java.util.Date;

import org.hibernate.EmptyInterceptor;
import org.hibernate.type.Type;
import org.springframework.stereotype.Component;

/**
 * 过滤器 - 自动填充创建、更新时间
 * ============================================================================
 */

@Component
public class EntityInterceptor extends EmptyInterceptor {

	private static final long serialVersionUID = 7319416231145791577L;
	
	private static final String CREATE_DATE_PROPERTY_NAME = "createDate";// "创建日期"属性名称
	private static final String MODIFY_DATE_PROPERTY_NAME = "modifyDate";// "修改日期"属性名称

	// 保存数据时回调此方法
	@Override
	public boolean onSave(Object entity, Serializable id, Object[] state, String[] propertyNames, Type[] types) {
		for (int i = 0; i < propertyNames.length; i++) {
			if (CREATE_DATE_PROPERTY_NAME.equals(propertyNames[i]) || MODIFY_DATE_PROPERTY_NAME.equals(propertyNames[i])) {
				state[i] = new Date();
			}
		}
		return true;
	}

	// 更新数据时回调此方法
	@Override
	public boolean onFlushDirty(Object entity, Serializable id, Object[] currentState, Object[] previousState, String[] propertyNames, Type[] types) {
		for (int i = 0; i < propertyNames.length; i++) {
			if (MODIFY_DATE_PROPERTY_NAME.equals(propertyNames[i])) {
				currentState[i] = new Date();
			}
		}
		return true;
	}

}