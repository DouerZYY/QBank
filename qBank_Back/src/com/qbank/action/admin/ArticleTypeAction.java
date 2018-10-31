package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.entity.ArticleType;
import com.qbank.service.ArticleTypeService;

/**
 * 文章类型Action类
 * @author Administrator
 *
 */
public class ArticleTypeAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1003847837581402677L;
	private ArticleType articleType;
	private List<ArticleType> articleTypeList ;
	private String articleTypeId;
	
	@Resource
	ArticleTypeService articleTypeService;
	
	/**
	 * 
	 * 功能描述：获取文章类型列表
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		pager = articleTypeService.findByPager(pager);
		return LIST;
	}
	/**
	 * 
	 * 功能描述：添加文章类型
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		articleTypeList = articleTypeService.getAll();
		return INPUT;
	}
	/**
	 * 
	 * 功能描述：保存文章类型
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save(){
		articleTypeService.save(articleType);
		return list();
	}
	/**
	 * 
	 * 功能描述：编辑文章类型信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		articleTypeList = articleTypeService.getAll();
		articleType = articleTypeService.load(id);
		return INPUT;
	}
	/**
	 * 
	 * 功能描述：删除文章类型信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String delete(){
		articleTypeService.delete(id);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：更新文章类型信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update (){
		ArticleType articleTypes = new ArticleType();
		articleTypes = articleTypeService.load(id);
		BeanUtils.copyProperties(articleType, articleTypes, new String[]{"id", "createDate", "modifyDate"});
		articleTypeService.update(articleTypes);
		return list();
	}

	public ArticleType getArticleType() {
		return articleType;
	}
	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}
	public List<ArticleType> getArticleTypeList() {
		return articleTypeList;
	}
	public void setArticleTypeList(List<ArticleType> articleTypeList) {
		this.articleTypeList = articleTypeList;
	}
	public String getArticleTypeId() {
		return articleTypeId;
	}
	public void setArticleTypeId(String articleTypeId) {
		this.articleTypeId = articleTypeId;
	}
	
	
	
	
	
	

}
