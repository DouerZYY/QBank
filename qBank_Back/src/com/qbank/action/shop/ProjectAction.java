package com.qbank.action.shop;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionContext;
import com.qbank.entity.Account;
import com.qbank.entity.Dictionary;
import com.qbank.entity.Project;
import com.qbank.entity.ProjectRecord;
import com.qbank.entity.Rates;
import com.qbank.entity.User;
import com.qbank.service.AccountService;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;
import com.qbank.service.ProjectRecordService;
import com.qbank.service.ProjectService;
import com.qbank.service.RatesService;
import com.qbank.service.UserService;
import com.qbank.bean.Pager;
import com.qbank.common.DateJsonValueProcessor;

public class ProjectAction extends BaseShopAction {

	/**
	 * 前台action，项目列表，项目购买。项目详情
	 */
	private static final long serialVersionUID = -8496467233353293246L;
	
	@Resource
	ProjectService projectService;
	@Resource
	RatesService ratesService;
	@Resource
	DictionaryService dicService;
	@Resource
	DicTypeService dicTypeService;
	@Resource
	AccountService accountService;
	@Resource
	UserService userService;
	@Resource
	ProjectRecordService projectRecordService;
	
	private List<Rates> ratesList;//利率列表
	private List<Project> proList ;//项目列表
	private Project project;
	private Account account;//用户账户
	private User users;//用户信息
	private List<ProjectRecord> recordList;//项目投资记录
	private List<Dictionary> termList;//项目期限列表
	private List<Dictionary> xlList;//用户学历表
	private BigDecimal rates;//项目利率
	private BigDecimal shouyi;
	private BigDecimal touzi;
	
	private User getSessionUser() {
		ActionContext actionContext = ActionContext.getContext();

		return (User) actionContext.getSession().get("user");
	}
	//项目列表	
	public String list(){
		ratesList = ratesService.getAll();//项目利率值。
		termList = dicService.getDicByCode(dicTypeService.getTypeByCode("TERM"));//获取项目期限。
		proList = projectService.getAll();//获取项目列表
		xlList = dicService.getDicByCode(dicTypeService.getTypeByCode("XLLX"));
		return "list";
	}
	
	//项目筛选处理
	public String filter(){
		return "";
	}
	
	//项目详情
	public String details(){
		ratesList = ratesService.getAll();//项目利率值。
		project = projectService.load(id);
		termList = dicService.getDicByCode(dicTypeService.getTypeByCode("TERM"));//获取项目期限。
		xlList = dicService.getDicByCode(dicTypeService.getTypeByCode("XLLX"));
		recordList  = projectRecordService.getRecordById(id);
		users  =project.getUser();
		return "details";
	}
	//项目购买确认页面
	public String confirm(){
		ratesList = ratesService.getAll();//项目利率值。
		project  = projectService.load(id);//获取项目相关参数参数
		termList = dicService.getDicByCode(dicTypeService.getTypeByCode("TERM"));//获取项目期限。
		
		for(int i =0;i<ratesList.size();i++){
			if(Integer.parseInt(ratesList.get(i).getRateCode())==project.getProjectRate()){
				rates = ratesList.get(i).getRateAmount();
			}
		}
		account = accountService.getInfoByUser(userService.load(getSessionUser().getId()));//获取用户账户
		return "confirm";
	}
	
	public String checkPasswdAjax(){
		User user = (User)getSession().get("user");
		String pw = request.getParameter("passwd");
		User users = userService.checkCashPassWd(user.getId(), pw);
		//System.out.println(users.getId()+"adfas"+pw);
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		if(null==users){
			jsonMap.put("flags", 0);
		}else{
			jsonMap.put("flags", 1);
		}
		return ajax(jsonMap);
		
	}
	//项目购买完成
	public String complete(){
		HttpServletRequest request = getRequest();
		String passwd = request.getParameter("passwd");//获取支付密码
		if(passwd==""){
			
		}
		BigDecimal amount = new BigDecimal(request.getParameter("amounts"));//获取投资金额
		touzi = amount;
		shouyi = amount.multiply(new BigDecimal(Double.toString(0.00054)));
		projectService.projectBuy(getSessionUser().getId(), amount, id);
		//项目信息
		return "complete";
	}
	
	@SuppressWarnings("unchecked")
	public String listForAjax() {
		HttpServletRequest request = getRequest();
		if (null == pager) {
			pager = new Pager();
		}
		String status = request.getParameter("status");
		//String rate = request.getParameter("rate");
		String investDeadline = request.getParameter("investDeadline");
		System.out.println(status+investDeadline);
		DetachedCriteria dc = DetachedCriteria.forClass(Project.class);
		if (StringUtils.isNotBlank(status)) {
				dc.add(Restrictions.eq("status", Integer.valueOf(status)));
		}
		if (StringUtils.isNotBlank(investDeadline)) {
				dc.add(Restrictions.eq("term", Integer.valueOf(investDeadline)));
		}
		pager = projectService.findByPager(pager, dc);
		JsonConfig config = new JsonConfig();
		config.registerJsonValueProcessor(Date.class, new DateJsonValueProcessor());
		config.setExcludes(new String[]{"user"});
		JSONObject json = JSONObject.fromObject(pager, config);
		return ajax(json);
	}

	public ProjectService getProjectService() {
		return projectService;
	}

	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
	}

	public List<Rates> getRatesList() {
		return ratesList;
	}

	public void setRatesList(List<Rates> ratesList) {
		this.ratesList = ratesList;
	}

	public List<Project> getProList() {
		return proList;
	}

	public void setProList(List<Project> proList) {
		this.proList = proList;
	}

	public List<Dictionary> getTermList() {
		return termList;
	}

	public void setTermList(List<Dictionary> termList) {
		this.termList = termList;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public List<ProjectRecord> getRecordList() {
		return recordList;
	}

	public void setRecordList(List<ProjectRecord> recordList) {
		this.recordList = recordList;
	}
	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public List<Dictionary> getXlList() {
		return xlList;
	}

	public void setXlList(List<Dictionary> xlList) {
		this.xlList = xlList;
	}

	

	public BigDecimal getRates() {
		return rates;
	}

	public void setRates(BigDecimal rates) {
		this.rates = rates;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public BigDecimal getShouyi() {
		return shouyi;
	}

	public void setShouyi(BigDecimal shouyi) {
		this.shouyi = shouyi;
	}

	public BigDecimal getTouzi() {
		return touzi;
	}

	public void setTouzi(BigDecimal touzi) {
		this.touzi = touzi;
	}



}
