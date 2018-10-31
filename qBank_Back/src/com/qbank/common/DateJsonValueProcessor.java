package com.qbank.common;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

/**
 * 处理JSON返回的日期格�?
 * @author Dcw
 * @date 2015-08-07
 */
public class DateJsonValueProcessor implements JsonValueProcessor {

	private String format = "yyyy-MM-dd HH:mm:ss";
	
	public DateJsonValueProcessor() {
	}

	public DateJsonValueProcessor(String format) {
		this.format = format;
	}

	@Override
	public Object processArrayValue(Object value, JsonConfig config) {
		String[] obj = {};
		if (null == value)
			return obj;
		if (value instanceof Date[]) {
			SimpleDateFormat sf = new SimpleDateFormat(format);
			Date[] dates = (Date[]) value;
			obj = new String[dates.length];
			for (int i = 0; i < dates.length; i++) {
				obj[i] = sf.format(dates[i]);
			}
		}
		if (value instanceof Date[]) {
			SimpleDateFormat sf = new SimpleDateFormat(format);
			Timestamp[] times = (Timestamp[]) value;
			obj = new String[times.length];
			for (int i = 0; i < times.length; i++) {
				obj[i] = sf.format(new Date(times[i].getTime()));
			}
		}
		return obj;
	}

	@Override
	public Object processObjectValue(String key, Object value, JsonConfig config) {
		if (null == value)
			return "";
		if (value instanceof Date) {
			return new SimpleDateFormat(format).format((Date) value);
		}
		if (value instanceof Timestamp) {
			 new SimpleDateFormat(format).format(new Date(((Timestamp) value).getTime()));
		}
		return value;
	}
}
