package com.qbank.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.metadata.ClassMetadata;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import com.qbank.bean.Pager;
import com.qbank.bean.Pager.OrderType;
import com.qbank.dao.BaseDao;

/**
 * Dao实现类 - 基类
 * ============================================================================
 */

@Repository
public class BaseDaoImpl<T, PK extends Serializable> implements BaseDao<T, PK> {

	private static final String CREATE_DATE_PROPERTY_NAME = "createDate";// "创建日期"属性名称
	private static final String ORDER_BY_PROPERTY_NAME = "orderList";// "排序"属性名称
	
	private Class<T> entityClass;
	protected SessionFactory sessionFactory;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public BaseDaoImpl() {
        Class c = getClass();
        Type type = c.getGenericSuperclass();
        if (type instanceof ParameterizedType) {
            Type[] parameterizedType = ((ParameterizedType) type).getActualTypeArguments();
            this.entityClass = (Class<T>) parameterizedType[0];
        }
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	public T get(PK id) {
		Assert.notNull(id, "id is required");
		return (T) getSession().get(entityClass, id);
	}

	@SuppressWarnings("unchecked")
	public T load(PK id) {
		Assert.notNull(id, "id is required");
		return (T) getSession().load(entityClass, id);
	}

	@SuppressWarnings("unchecked")
	public List<T> getAll() {
		String hql;
		ClassMetadata classMetadata = sessionFactory.getClassMetadata(entityClass);
		if (ArrayUtils.indexOf(classMetadata.getPropertyNames(), ORDER_BY_PROPERTY_NAME) > 0) {
			hql = "from " + entityClass.getName() + " as entity order by entity." + ORDER_BY_PROPERTY_NAME + " asc, entity." + CREATE_DATE_PROPERTY_NAME + " desc";
		} else {
			hql = "from " + entityClass.getName() + " as entity order by entity." + CREATE_DATE_PROPERTY_NAME + " desc";
		}
		return getSession().createQuery(hql).list();
	}
	
	public Long getTotalCount() {
		String hql = "select count(*) from " + entityClass.getName();
		return (Long) getSession().createQuery(hql).uniqueResult();
	}

	@SuppressWarnings("unchecked")
	public PK save(T entity) {
		Assert.notNull(entity, "entity is required");
		return (PK) getSession().save(entity);
	}

	public void update(T entity) {
		Assert.notNull(entity, "entity is required");
		getSession().update(entity);
	}

	public void delete(T entity) {
		Assert.notNull(entity, "entity is required");
		getSession().delete(entity);
	}

	public void delete(PK id) {
		Assert.notNull(id, "id is required");
		T entity = load(id);
		getSession().delete(entity);
	}

	public void delete(PK[] ids) {
		Assert.notEmpty(ids, "ids must not be empty");
		for (PK id : ids) {
			T entity = load(id);
			getSession().delete(entity);
		}
	}

	public void flush() {
		getSession().flush();
	}

	public void evict(Object object) {
		Assert.notNull(object, "object is required");
		getSession().evict(object);
	}

	public void clear() {
		getSession().clear();
	}
	
	public Pager findByPager(Pager pager) {
		if (pager == null) {
			pager = new Pager();
		}
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(entityClass);
		return findByPager(pager, detachedCriteria);
	}

	public Pager findByPager(Pager pager, DetachedCriteria detachedCriteria) {
		if (pager == null) {
			pager = new Pager();
		}
		Integer pageNumber = pager.getPageNumber();
		Integer pageSize = pager.getPageSize();
		String property = pager.getProperty();
		String keyword = pager.getKeyword();
		String orderBy = pager.getOrderBy();
		OrderType orderType = pager.getOrderType();
		
		Criteria criteria = detachedCriteria.getExecutableCriteria(getSession());
		if (StringUtils.isNotEmpty(property) && StringUtils.isNotEmpty(keyword)) {
			String propertyString = "";
			if (property.contains(".")) {
				String propertyPrefix = StringUtils.substringBefore(property, ".");
				String propertySuffix = StringUtils.substringAfter(property, ".");
				criteria.createAlias(propertyPrefix, "model");
				propertyString = "model." + propertySuffix;
			} else {
				propertyString = property;
			}
			criteria.add(Restrictions.like(propertyString, "%" + keyword + "%"));
		}
		
		Integer totalCount = (Integer) criteria.setProjection(Projections.rowCount()).uniqueResult();
		
		criteria.setProjection(null);
		criteria.setResultTransformer(CriteriaSpecification.ROOT_ENTITY);
		criteria.setFirstResult((pageNumber - 1) * pageSize);
		criteria.setMaxResults(pageSize);
		if (StringUtils.isNotEmpty(orderBy) && orderType != null) {
			if (orderType == OrderType.asc) {
				criteria.addOrder(Order.asc(orderBy));
			} else {
				criteria.addOrder(Order.desc(orderBy));
			}
		}
		ClassMetadata classMetadata = sessionFactory.getClassMetadata(entityClass);
		if (ArrayUtils.indexOf(classMetadata.getPropertyNames(), ORDER_BY_PROPERTY_NAME) > 0) {
			criteria.addOrder(Order.asc(ORDER_BY_PROPERTY_NAME));
		}
		criteria.addOrder(Order.desc(CREATE_DATE_PROPERTY_NAME));
		pager.setTotalCount(totalCount);
		pager.setList(criteria.list());
		return pager;
	}

	@Override
	public Pager findByPager(Pager pager, String select, String sqlExceptSelect, Map<String, Object> params) {
		if (pager == null) {
			pager = new Pager();
		}
		String property = pager.getProperty();
		String keyword = pager.getKeyword();
		params.put(property, keyword);//设置进参数
		
		String countSql = "select count(*) " + sqlExceptSelect;
		String listSql = select + " " + sqlExceptSelect;
		
		pager.setTotalCount(getSqlCount(countSql, params));
		pager.setList(getSqlList(pager, listSql, params));
		return pager;
	}
	
	/**
	 * 功能描述：查询总数
	 * 输入参数：
	 * @param sql
	 * @param params
	 * @return
	 * 返回类型：Integer
	 * 创建人：Txw
	 * 日期：2016年3月11日
	 */
	private Integer getSqlCount(String sql, Map<String, Object> params) {
		SQLQuery query = getSession().createSQLQuery(sql);
		this.parseParams(query, params);
		return ((BigInteger) query.uniqueResult()).intValue();
	}
	
	/**
	 * 功能描述：查询总数
	 * 输入参数：
	 * @param pager
	 * @param sql
	 * @param params
	 * @return
	 * 返回类型：List
	 * 创建人：Txw
	 * 日期：2016年3月1日
	 */
	@SuppressWarnings("rawtypes")
	private List getSqlList(Pager pager, String sql, Map<String, Object> params) {
		SQLQuery query = getSession().createSQLQuery(sql);
		this.parseParams(query, params);
		query.setFirstResult((pager.getPageNumber() - 1) * pager.getPageSize());
		query.setMaxResults(pager.getPageSize());
		query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
		return query.list();
	}
	
	
	/**
	 * 功能描述：构造查询参数
	 * 输入参数：
	 * @param query
	 * @param params
	 * 返回类型：void
	 * 创建人：Ducw
	 * 日期：2015年8月15日
	 */
	private void parseParams(Query query, Map<String, Object> params) {
		if(null != params && !params.isEmpty()){
			Iterator<String> keys = params.keySet().iterator();
			while (keys.hasNext()) {
				String key = keys.next();
				if (StringUtils.isNotBlank(key)) {
					query.setParameter(key, params.get(key));
				}
			}
		}
	}
}