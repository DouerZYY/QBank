package com.qbank.service;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.criterion.DetachedCriteria;

import com.qbank.bean.Pager;


/**
 * Service接口 - Service接口基类
 * ============================================================================
 */

public interface BaseService<T, PK extends Serializable> {

	/**
	 * 根据ID获取实体对象.
	 * 
	 * @param id
	 *            记录ID
	 * @return 实体对象
	 */
	public T get(PK id);

	/**
	 * 根据ID获取实体对象.
	 * 
	 * @param id
	 *            记录ID
	 * @return 实体对象
	 */
	public T load(PK id);

	/**
	 * 获取所有实体对象集合.
	 * 
	 * @return 实体对象集合
	 */
	public List<T> getAll();
	
	/**
	 * 获取所有实体对象总数.
	 * 
	 * @return 实体对象总数
	 */
	public Long getTotalCount();

	/**
	 * 保存实体对象.
	 * 
	 * @param entity
	 *            对象
	 * @return ID
	 */
	public PK save(T entity);

	/**
	 * 更新实体对象.
	 * 
	 * @param entity
	 *            对象
	 */
	public void update(T entity);

	/**
	 * 删除实体对象.
	 * 
	 * @param entity
	 *            对象
	 * @return
	 */
	public void delete(T entity);

	/**
	 * 根据ID删除实体对象.
	 * 
	 * @param id
	 *            记录ID
	 */
	public void delete(PK id);

	/**
	 * 根据ID数组删除实体对象.
	 * 
	 * @param ids
	 *            ID数组
	 */
	public void delete(PK[] ids);
	
	/**
	 * 刷新session.
	 * 
	 */
	public void flush();

	/**
	 * 清除某一对象.
	 * 
	 * @param object
	 *            需要清除的对象
	 */
	public void evict(Object object);
	
	/**
	 * 清除Session.
	 * 
	 */
	public void clear();

	/**
	 * 根据Page对象进行查询(提供分页、查找、排序功能).
	 * 
	 * @param page
	 *            Page对象
	 * @return Page对象
	 */
	public Pager findByPager(Pager pager);
	
	/**
	 * 根据Pager和DetachedCriteria对象进行查询(提供分页、查找、排序功能).
	 * 
	 * @param pager
	 *            Pager对象
	 * @return Pager对象
	 */
	public Pager findByPager(Pager pager, DetachedCriteria detachedCriteria);

	/**
	 * 上传文件
	 * 
	 * @param 
	 *            
	 * @return 文件存取路径
	 */
	public String upLoadFile(File file, String fileName);
	
	/**
	 * 功能描述：原生sql查询
	 * 输入参数：
	 * @param pager
	 * @param select
	 * @param sqlExceptSelect
	 * @param params
	 * @return
	 */
	public Pager findByPager(Pager pager, String select, String sqlExceptSelect, Map<String, Object> params);
	}

