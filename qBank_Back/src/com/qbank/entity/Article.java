package com.qbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.compass.annotations.Searchable;

/**@author  作者: 
 **@date 创建时间：2016-3-3 下午3:14:34 网站文章管理
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Entity
@Searchable
public class Article extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String articleTitle;//文章标题
	private String articleAuthor;//文章作者
	private String articleHot;//文章热点
	private String pictureUrl;//文章图片
	private String content;//文章内容
	private Integer isPublish;//文章是否发布
	private ArticleType articleType;//文章类型
	@Column(length=40)
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	@Column(length=40)
	public String getArticleAuthor() {
		return articleAuthor;
	}
	public void setArticleAuthor(String articleAuthor) {
		this.articleAuthor = articleAuthor;
	}
	@Column(length=100)
	public String getArticleHot() {
		return articleHot;
	}
	public void setArticleHot(String articleHot) {
		this.articleHot = articleHot;
	}
	@Column(length=100)
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	@Column(length=1000)
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getIsPublish() {
		return isPublish;
	}
	public void setIsPublish(Integer isPublish) {
		this.isPublish = isPublish;
	}
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(nullable=false)
	public ArticleType getArticleType() {
		return articleType;
	}
	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}
	
	
	

}
