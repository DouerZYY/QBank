package com.qbank.action.admin;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.entity.Article;
import com.qbank.entity.ArticleType;
import com.qbank.service.ArticleService;
import com.qbank.service.ArticleTypeService;

/**
 * 网站文章action类
 * @author Administrator
 *
 */
public class ArticleAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7602421309480613889L;
	@Resource
	ArticleService articleService;
	@Resource
	ArticleTypeService articleTypeService;
	
	private Article article;
	private List<Article> articleList;
	private List<ArticleType> artTypeList;
	private String articleTypeId;
	private File img;
	private String imgFileName;
	
	/**
	 * 
	 * 功能描述：获取文章列表
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		pager = articleService.findByPager(pager);
		return LIST;
	}
	
	/**
	 * 
	 * 功能描述：添加文章
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		artTypeList = articleTypeService.getAll();
		return INPUT;
	}
	
	/**
	 * 
	 * 功能描述：保存文章信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save(){
		if(null!=img){
			article.setPictureUrl(articleService.upLoadFile(img,imgFileName));
		}
		if(null!=articleTypeId){
			article.setArticleType(articleTypeService.get(articleTypeId));
		}
		articleService.save(article);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：编辑文章内容
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		artTypeList = articleTypeService.getAll();
		article = articleService.load(id);
		return INPUT;
	}
	
	/**
	 * 
	 * 功能描述：更新文章信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update(){
		Article articles = new Article();
		articles=articleService.load(id);
		if(null!=img){
			article.setPictureUrl(articleService.upLoadFile(img,imgFileName));
		}else{
			article.setPictureUrl(articles.getPictureUrl());
		}
		BeanUtils.copyProperties(article, articles, new String[]{"id", "createDate", "modifyDate"});
		if(null!=articleTypeId){
			articles.setArticleType(articleTypeService.get(articleTypeId));
		}
		articleService.update(articles);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：删除文章信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String delete(){
		articleService.delete(id);
		return list();
	}	
	
	
	
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public List<Article> getArticleList() {
		return articleList;
	}
	public void setArticleList(List<Article> articleList) {
		this.articleList = articleList;
	}
	public List<ArticleType> getArtTypeList() {
		return artTypeList;
	}
	public void setArtTypeList(List<ArticleType> artTypeList) {
		this.artTypeList = artTypeList;
	}

	public String getArticleTypeId() {
		return articleTypeId;
	}

	public void setArticleTypeId(String articleTypeId) {
		this.articleTypeId = articleTypeId;
	}

	public File getImg() {
		return img;
	}

	public void setImg(File img) {
		this.img = img;
	}

	public String getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}
	
}
