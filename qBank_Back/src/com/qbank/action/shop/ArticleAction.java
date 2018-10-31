package com.qbank.action.shop;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.qbank.entity.Article;
import com.qbank.entity.ArticleType;
import com.qbank.service.ArticleService;
import com.qbank.service.ArticleTypeService;

/** * @author  作者 LittleVv 
 * @date 创建时间：2016年3月14日 上午11:37:13 
 * @version 1.0 
 **/
public class ArticleAction extends BaseShopAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7306583564108281031L;
	@Resource
	ArticleService articleService ;
	@Resource
	ArticleTypeService typeService;
	
	private Article article;
	private List<Article> articleList;
	private List<ArticleType> listTitle;
	
	//新手上路
	public String index(){
		return "new";
	}
	//底部新闻详情点击
	public String detail(){
		listTitle = typeService.getChildList(typeService.getTypeByCode("NEWS").getId());
		article = articleService.load(id);
		 request.setAttribute("type", article.getArticleType().getArtTypeCode());
	     request.setAttribute("typeName", article.getArticleType().getTypeName());
		return "detail";
	}
	public String news(){
		listTitle = typeService.getChildList(typeService.getTypeByCode("NEWS").getId());
	    HttpServletRequest request = getRequest();
	    String type = request.getParameter("type");
	    System.out.println(type);
        if(null==type){
    	    type="MEDIA";
        }
        articleList = articleService.getByType(typeService.getTypeByCode(type));
        System.out.println(articleList.size());
      request.setAttribute("type", type);
      request.setAttribute("typeName", typeService.getTypeByCode(type).getTypeName());
      return "list";
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
	public List<ArticleType> getListTitle() {
		return listTitle;
	}
	public void setListTitle(List<ArticleType> listTitle) {
		this.listTitle = listTitle;
	}
	

}
