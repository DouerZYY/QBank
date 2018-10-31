package com.qbank.common;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

/**
 * 处理JSON返回的复杂属性出现循环依赖的问题
 * @author Dcw
 * @date 2015-08-07
 */
public class ObjectJsonValueProcessor implements JsonValueProcessor {

	//�?��留下的字段数�?
	private String[] properties;
	//�?��做处理的复杂属�?类型
	private Class<?> clazz;
	
	public ObjectJsonValueProcessor() {
	}

	public ObjectJsonValueProcessor(String[] properties, Class<?> clazz) {
		this.properties = properties;
		this.clazz = clazz;
	}

	@Override
	public Object processArrayValue(Object value, JsonConfig config) {
		return "";
	}

	@Override
	public Object processObjectValue(String key, Object value, JsonConfig config) {
		PropertyDescriptor pd = null;
		Method method = null;
		StringBuffer sb = new StringBuffer("{");
		try {
			for (int i = 0; i < properties.length; i++) {
				pd = new PropertyDescriptor(properties[i], clazz);
				method = pd.getReadMethod();
				String v = String.valueOf(method.invoke(value));
				sb.append("'" + properties[i] + "':'" + v + "'");
				sb.append(i != properties.length - 1 ? "," : "");
			}
			sb.append("}");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return JSONObject.fromObject(sb.toString());
	}

}
