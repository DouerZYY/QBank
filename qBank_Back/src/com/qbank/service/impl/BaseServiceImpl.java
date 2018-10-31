package com.qbank.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.transaction.annotation.Transactional;

import com.qbank.bean.Pager;
import com.qbank.dao.BaseDao;
import com.qbank.service.BaseService;
import com.qbank.util.CommonUtil;



/**
 * Service实现类 - Service实现类基类
 * ============================================================================
 */

@Transactional(readOnly = true)
public class BaseServiceImpl<T, PK extends Serializable> implements BaseService<T, PK> {

	private BaseDao<T, PK> baseDao;
	

	private File file;
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public BaseDao<T, PK> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao<T, PK> baseDao) {
		this.baseDao = baseDao;
	}

	@Transactional(readOnly = true)
	public T get(PK id) {
		return baseDao.get(id);
	}

	@Transactional(readOnly = true)
	public T load(PK id) {
		return baseDao.load(id);
	}

	@Transactional(readOnly = true)
	public List<T> getAll() {
		return baseDao.getAll();
	}
	
	@Transactional(readOnly = true)
	public Long getTotalCount() {
		return baseDao.getTotalCount();
	}

	@Transactional
	public PK save(T entity) {
		return baseDao.save(entity);
	}

	@Transactional
	public void update(T entity) {
		baseDao.update(entity);
	}

	@Transactional
	public void delete(T entity) {
		baseDao.delete(entity);
	}

	@Transactional
	public void delete(PK id) {
		baseDao.delete(id);
	}

	@Transactional
	public void delete(PK[] ids) {
		baseDao.delete(ids);
	}
	
	@Transactional(readOnly = true)
	public void flush() {
		baseDao.flush();
	}

	@Transactional(readOnly = true)
	public void clear() {
		baseDao.clear();
	}
	
	@Transactional(readOnly = true)
	public void evict(Object object) {
		baseDao.evict(object);
	}

	@Transactional(readOnly = true)
	public Pager findByPager(Pager pager) {
		return baseDao.findByPager(pager);
	}
	
	@Transactional(readOnly = true)
	public Pager findByPager(Pager pager, DetachedCriteria detachedCriteria) {
		return baseDao.findByPager(pager, detachedCriteria);
	}


	@Override
	public Pager findByPager(Pager pager, String select, String sqlExceptSelect, Map<String, Object> params) {
		return baseDao.findByPager(pager, select, sqlExceptSelect, params);
	}
	@Override
	public String upLoadFile(File file, String fileName) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMM");
		String dateString = simpleDateFormat.format(new Date());
		String imgFilePath = "/upload/" + dateString + "/" + CommonUtil.getUUID() + "." + StringUtils.substringAfterLast(fileName, ".").toLowerCase();
		File imgFile = new File(ServletActionContext.getServletContext().getRealPath(imgFilePath));
		try {
			FileUtils.copyFile(file, imgFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return  imgFilePath;
	}
	
}