package com.qbank.action.shop;

import java.util.List;

import javax.annotation.Resource;

import com.qbank.entity.Advertise;
import com.qbank.entity.Article;
import com.qbank.entity.Dictionary;
import com.qbank.entity.Project;
import com.qbank.entity.Rates;
import com.qbank.service.AdvertiseService;
import com.qbank.service.ArticleService;
import com.qbank.service.ArticleTypeService;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;
import com.qbank.service.ProjectService;
import com.qbank.service.RatesService;

public class IndexAction extends BaseShopAction {

	private static final long serialVersionUID = 1325154633904139673L;

	@Resource
	AdvertiseService advertiseService;
	@Resource
	ProjectService projectService;
	@Resource
	ArticleService articleService;
	@Resource
	DictionaryService dicService;
	@Resource
	DicTypeService	dicTypeService;
	@Resource
	RatesService ratesService;
	@Resource
	ArticleTypeService typeService;
	
	private Advertise advertise;
	private Project project;
	private Article article;
	private List<Project> projectList;
	private List<Advertise> advertiseList;
	private List<Article> articleList;
	private List<Dictionary> termList;//项目期限列表
	private List<Rates> ratesList;//利率列表

	//网站首页
	public String index(){
		//System.out.println(typeService.getTypeByCode("NEWS").getId());
		articleList = articleService.getByType(typeService.getTypeByCode("GSNEWS"));
		termList = dicService.getDicByCode(dicTypeService.getTypeByCode("TERM"));
		ratesList = ratesService.getAll();
		projectList = projectService.getAll();
		if(projectList.size()>3){
			projectList = projectList.subList(0, 3);
		}
		return "index";
	}
	
	
	
	public List<Rates> getRatesList() {
		return ratesList;
	}

	public void setRatesList(List<Rates> ratesList) {
		this.ratesList = ratesList;
	}
	public List<Dictionary> getTermList() {
		return termList;
	}
	public void setTermList(List<Dictionary> termList) {
		this.termList = termList;
	}
	public List<Article> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<Article> articleList) {
		this.articleList = articleList;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public String toProductDetail(){
		project = projectService.get(id);
		return "product_detail";
	}
	
    public List<Project> getProjectList() {
		return projectList;
	}
	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}
	public List<Advertise> getAdvertiseList() {
		return advertiseList;
	}
	public void setAdvertiseList(List<Advertise> advertiseList) {
		this.advertiseList = advertiseList;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Advertise getAdvertise() {
		return advertise;
	}

	public void setAdvertise(Advertise advertise) {
		this.advertise = advertise;
	}
}
