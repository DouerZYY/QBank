package com.qbank.action.shop;

import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionContext;
import com.qbank.entity.Account;
import com.qbank.entity.AccountRecord;
import com.qbank.entity.Apply;
import com.qbank.entity.Card;
import com.qbank.entity.Dictionary;
import com.qbank.entity.Grade;
import com.qbank.entity.Project;
import com.qbank.entity.ProjectRecord;
import com.qbank.entity.Rates;
import com.qbank.entity.TransferApply;
import com.qbank.entity.User;
import com.qbank.entity.WebMail;
import com.qbank.service.AccountRecordService;
import com.qbank.service.AccountService;
import com.qbank.service.ApplyService;
import com.qbank.service.CardService;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;
import com.qbank.service.GradeService;
import com.qbank.service.ProjectRecordService;
import com.qbank.service.ProjectService;
import com.qbank.service.RatesService;
import com.qbank.service.TransferApplyService;
import com.qbank.service.UserService;
import com.qbank.service.WebMailService;
import com.qbank.bean.Pager;
import com.qbank.common.DateJsonValueProcessor;
import com.qbank.util.DateUtils;

public class MemberAction extends BaseShopAction {

	/**
	 * 前台用户action
	 */
	private static final long serialVersionUID = 1L;

	private User user;
	private Grade grade;
	private Account account;
	private AccountRecord accountRecord;
	private Project project;
	private ProjectRecord projectRecord;

	private String code;
	private String cashPassword;
	private BigDecimal amount;
	private int totalPage;

	
	private int accountProjectNumber;
	private BigDecimal accountProjectAmount;
	private BigDecimal accountProjectAmount_1;
	private BigDecimal accountProjectAmount_2;
	private BigDecimal accountCashAmount;
	private BigDecimal accountRechargeAmount;
	private BigDecimal accountProfitAmount;
	private BigDecimal accountProfitAmount_1;

	private List<Project> projectList;
	private List<ProjectRecord> projectRecordList;
	private List<Dictionary> hkfs;
	private List<User> userList;
	private List<Rates> ratesList;
	private List<AccountRecord> accountRecordList;
	private List<Card> cardList;
	private List<WebMail> mailList;
	private List<Dictionary> xlList;// 学历字典信息列表
	private List<Dictionary> sqList;// 学历字典信息列表
	private List<Apply> applyList;
	private List<TransferApply> transferApplyList;

	private String cash_result;
	
	@Resource
	WebMailService webMailService;
	@Resource
	UserService userService;
	@Resource
	GradeService gradeService;
	@Resource
	AccountService accountService;
	@Resource
	AccountRecordService accountRecordService;
	@Resource
	ProjectService projectService;
	@Resource
	ProjectRecordService projectRecordService;
	@Resource
	DictionaryService dictionaryService;
	@Resource
	DicTypeService dicTypeService;
	@Resource
	RatesService ratesService;
	@Resource
	CardService cardService;
	@Resource
	WebMailService mailService;
	@Resource
	DictionaryService dicService;
	@Resource
	ApplyService applyService;
	@Resource
	TransferApplyService transferApplyService;

	// 用户登录
	public String login() {
		return "";
	}

	// 用户登录验证
	public String loginCheck() {
		return "";
	}

	// 个人中心首页
	public String index() {
		List<User> userList1 = new ArrayList<User>();
		user = getSessionUser(); // userService.get("8a8c092a53872f090153873071400001");
		ratesList = ratesService.getAll();// 获取利率列表进行比对
		grade = gradeService.getInfoByCode(user.getCredit());
		account = accountService.getInfoByUser(user);
		projectList = projectRecordService.getProjectListByUser(user);
		projectRecordList = projectRecordService.getProjectRecordListById(user);
		if (!projectRecordList.isEmpty()) {
			for (int i = 0; i < projectList.size(); i++) {
				userList1.add(projectList.get(i).getUser());
			}
		}
		userList = userList1;
		hkfs = dictionaryService.getDicByCode(dicTypeService
				.getTypeByCode("HKFS"));
		accountProjectAmount = BigDecimal.ZERO;
		accountProfitAmount = BigDecimal.ZERO;
		projectList = projectRecordService.getProjectListByUser(user);
		projectRecordList = projectRecordService.getProjectRecordListById(user);
		accountRecordList = accountRecordService.getAccountRecordListByUser(user);
		for (int i = 0; i < accountRecordList.size(); i++) {
			accountRecord = accountRecordList.get(i);
			if (accountRecord.getActionType() == 2) {
				accountProjectAmount = accountProjectAmount.add(accountRecord.getAmount());
				break;
			}

		}
		for (int j = 0; j < projectRecordList.size(); j++) {

			BigDecimal t = ratesService.getRatesByCode(
					Integer.toString(projectService.get(
							projectRecordList.get(j).getProjectId())
							.getProjectRate())).getRateAmount();
			accountProfitAmount = accountProfitAmount.add(accountRecord
					.getAmount().multiply(t));
		}
		accountProfitAmount_1 = accountProfitAmount.multiply(new BigDecimal(
				Double.toString(0.29)));
		return "index";
	}

	// 理财页面
	public String project() {
		return "";
	}

	// 交易记录
	public String record() {
		user = getSessionUser();
		// projectRecordList =
		// projectRecordService.getProjectRecordListById(user);
		accountRecordList = accountRecordService.getAccountRecordListByUser(user);

		return "trade_list";
	}

	// 资产统计
	public String toAccount() {
		accountRechargeAmount = BigDecimal.ZERO;
		accountProjectAmount = BigDecimal.ZERO;
		accountCashAmount = BigDecimal.ZERO;
		accountProfitAmount = BigDecimal.ZERO;
		user = getSessionUser();
		account = accountService.getInfoByUser(user);
		projectList = projectRecordService.getProjectListByUser(user);
		projectRecordList = projectRecordService.getProjectRecordListById(user);
		accountRecordList = accountRecordService
				.getAccountRecordListByUser(user);
		for (int i = 0; i < accountRecordList.size(); i++) {
			accountRecord = accountRecordList.get(i);
			switch (accountRecord.getActionType()) {
			case 0:
				accountRechargeAmount = accountRechargeAmount.add(accountRecord
						.getAmount());
				break;
			case 1:
				accountCashAmount = accountCashAmount.add(accountRecord
						.getAmount());
				break;
			case 2:
				accountProjectAmount = accountProjectAmount.add(accountRecord
						.getAmount());
				break;
			}
		}
		for (int j = 0; j < projectRecordList.size(); j++) {

			BigDecimal t = ratesService.getRatesByCode(
					Integer.toString(projectService.get(
							projectRecordList.get(j).getProjectId())
							.getProjectRate())).getRateAmount();
			accountProfitAmount = accountProfitAmount.add(accountRecord
					.getAmount().multiply(t));
		}
		accountProfitAmount_1 = accountProfitAmount.multiply(new BigDecimal(
				Double.toString(0.29)));
		accountProjectNumber = projectList.size();
		accountProjectAmount_1 = accountProjectAmount.multiply(new BigDecimal(
				Double.toString(0.24)));
		accountProjectAmount_2 = accountProjectAmount.multiply(new BigDecimal(
				Double.toString(0.76)));
		return "account";
	}

	// 充值操作
	public String toRecharge() {
		user = getSessionUser();
		account = accountService.getInfoByUser(user);
		cardList = cardService.getCardListByUser(user);
		return "recharge";
	}

	public String recharge() {
		user = getSessionUser();
		accountRecord.setActionType(0);
		accountRecord.setUser(user);
		accountRecordService.save(accountRecord);
		account = accountService.getInfoByUser(user);
		account.setAmount(account.getAmount().add(accountRecord.getAmount()));
		account.setTotalAmount(account.getTotalAmount().add(
				accountRecord.getAmount()));
		accountService.update(account);
		//站内信
		WebMail mail = new WebMail();
		mail.setUser(user);
		mail.setTitle("充值成功！！");
		mail.setContent("恭喜您刚刚成功充值"+accountRecord.getAmount()+"元");
		mailService.save(mail);
		return index();
	}

	// 提现
	public String toCash() {
		user = getSessionUser();
		account = accountService.getInfoByUser(user);
		cardList = cardService.getCardListByUser(user);
		return "cash";
	}

	public void checkCode() throws Exception {
		String result = "0";
		HttpServletRequest request = getRequest();
		/** 获取手动输入的手机短信验证码 */
		String SmsCheckCode = request.getParameter("SmsCheckCode");
		System.out.println(SmsCheckCode);
		/** 获取session中存放的手机短信验证码 */
		String code = "1234";
		try {
			if (!SmsCheckCode.equals(code)) {
				result = "0";
			} else {
				result = "1";
			}
		} catch (Exception e) {
			throw new RuntimeException("短信验证失败", e);
		}
		HttpServletResponse response = getResponse();
		response.setContentType("application/json;charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter out = response.getWriter();
		out.write(result.toString());
	}

	public String memberAjaxUpdate() {
		HttpServletRequest request = getRequest();
		String type = request.getParameter("type");
		if ("paypassword".equals(type)) {// 支付密码
			User entity = getSessionUser();
			if (null != entity.getCashPassword()) {
				if (!entity.getCashPassword().equals(
						request.getParameter("oldPayPassword"))) {
					return ajax(Status.error, "原支付密码错误，请重试！");
				}
			}
			entity.setCashPassword(user.getCashPassword());
			userService.update(entity);
		} else if ("password".equals(type)) {// 登录密码修改
			User entity = getSessionUser();
			if (!entity.getPassword().equals(
					request.getParameter("oldPassword"))) {
				return ajax(Status.error, "原始密码错误，请重试！");
			}
			entity.setPassword(user.getPassword());
			userService.update(entity);
		} else if ("phone1".equals(type)) {// 更换手机第一步
			User entity = getSessionUser();
			if (StringUtils.isBlank(entity.getIdNumber())) {
				return ajax(Status.error, "请先开通第三方账户！");
			}
			if (!entity.getIdNumber().equals(user.getIdNumber())) {
				return ajax(Status.error, "身份证号码错误！");
			}
		} else if ("phone2".equals(type)) {
			User entity = getSessionUser();
			entity.setPhoneNumber(user.getPhoneNumber());
			userService.update(entity);
			return ajax(Status.success, user.getPhoneNumber());
		}
		return ajax(Status.success);
	}

	public String cash() {
		user = getSessionUser();
		amount = accountRecord.getAmount();
		if (amount.compareTo(BigDecimal.ZERO) <= 0) {
			cash_result = "请输入正确数额";
			return toCash();
		}
		Account account1 = accountService.getInfoByUser(user);
		if (account1.getAmount().subtract(amount).compareTo(BigDecimal.ZERO) < 0) {
			amount = account1.getAmount();
		}
		account1.setFrozenAmount(account1.getFrozenAmount().add(amount));
		account1.setAmount(account1.getAmount().subtract(amount));
		accountService.update(account1);
		System.out.println(code);
		if (code.equals("1234") && user.getCashPassword().equals(cashPassword)) {
			accountRecord.setAmount(amount);
			accountRecord.setActionType(1);
			accountRecord.setUser(user);
			accountRecordService.save(accountRecord);
			System.out.println(accountRecord.getAmount());
			return index();
		}
		cash_result = "提现失败";
		return toCash();

	}

	// 站内消息
	public String message() {
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer totalAmt = 0;//消息总数
		Integer unReadAmount= 0;//未读消息数目
		mailList = mailService.getMail(getSessionUser());
		if(!mailList.isEmpty()){
			totalAmt = mailList.size();
		}
		unReadAmount = webMailService.getUnreadAmt(getSessionUser());
		request.setAttribute("totalAmt", totalAmt);
		request.setAttribute("unRead",unReadAmount);
		return "message";
	}
	
	public String notificationSets(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String  str = request.getParameter("str");//获取前台拼接好的字符串
		User users =getSessionUser();
		users.setNotifition(str);
		userService.update(users);
		return ajax(Status.success, "设置成功");
	}
	
	// 个人信息
	public String info() {
		if(user!=null){
			//System.out.println(user.getId());
			User entity = getSessionUser();
			BeanUtils.copyProperties(user, entity, new String[] { "id","createDate", "modifyDate" });// 将修改后的对象rates的部分属性拷贝给原来的对象
			userService.update(entity);
		}
		user = getSessionUser();
		xlList = dicService.getDicByCode(dicTypeService.getTypeByCode("XLLX"));
		return "info";
	}

	public String updates() {
		return info();

	}

	// 安全设置
	public String safe() {
		User user = getSessionUser();
		if (null != user) {
			HttpServletRequest request = getRequest();
			request.setAttribute("userName", user.getName());
			request.setAttribute("phone", user.getPhoneNumber());
			request.setAttribute("isReall", true);
			request.setAttribute("isCash", true);
			request.setAttribute("isEmail", true);
			if (user.getIdNumber() == null) {
				request.setAttribute("isReall", false);
			}
			if (user.getCashPassword() == null && user.getCashPassword() == "") {
				request.setAttribute("isCash", false);
			}
			if (user.getEmail() == "" && user.getEmail() == null) {
				request.setAttribute("isEmail", false);
			}
		}

		return "security";
	}

	// 我的银行卡
	public String cards() {
		user = getSessionUser();
		cardList = cardService.getCardListByUser(user);
		return "card";
	}
	

	// 我的申请记录
	public String apply() {
		user = getSessionUser();
		applyList = applyService.getApplyListByUser(user);
		int totalSize = applyList.size();
		
		totalPage = totalSize / 10;
		if (totalSize % 10 > 0) {
			totalPage ++;
		}
		
		return "apply";
	}
	
	@SuppressWarnings("unchecked")
	public String applyAjaxList(){
		HttpServletRequest request = getRequest();
		String dateType = request.getParameter("dateType");
		String applyState = request.getParameter("applyState");
		int page  = Integer.parseInt(request.getParameter("page"));
		System.out.println(dateType);
		System.out.println(applyState);
		System.out.println("page+++++++++++"+page);
		if (null == pager) {
			pager = new Pager();
		}
		pager.setPageNumber(page);
		Date end = new Date();
		Date begin = null;
		if ("0".equals(dateType)){//最近7天
			begin = DateUtils.getNextDay(end, -7);
		}else if("1".equals(dateType)){//最近一个月
			begin = DateUtils.getNextDay(end, -30);
		}else if("2".equals(dateType)){
			begin = DateUtils.getNextDay(end, -30 * 3);
		}else if("3".equals(dateType)){
			begin = DateUtils.getNextDay(end, -183);
		}
		
		Integer tradeType = null;
		if("0".equals(applyState)){//审核中
			tradeType = 0;
		}else if("1".equals(applyState)){//审核通过
			tradeType = 1;
		}else if("2".equals(applyState)){//审核没通过
			tradeType = 2;
		}
		
		DetachedCriteria dc = DetachedCriteria.forClass(Apply.class);
		
		if(null != tradeType){
			dc.add(Restrictions.eq("applyStatus", tradeType));
		}
		if(null != begin){
			dc.add(Restrictions.between("createDate", begin, end));
		}
		dc.add(Restrictions.eq("applyUser", getSessionUser()));
		pager = applyService.findByPager(pager, dc);
		totalPage = pager.getPageCount();
		System.out.println(pager.getList().size());
		System.out.println(totalPage);
		JsonConfig config = new JsonConfig();
		config.registerJsonValueProcessor(Date.class, new DateJsonValueProcessor("yyyy-MM-dd"));
		config.setExcludes(new String[]{"applyUser", "attachment"});
		JSONObject json = JSONObject.fromObject(pager, config);
		return ajax(json);
	}
	
	public String transApply() {
		user = getSessionUser();
		sqList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("SQZT"));
		transferApplyList = transferApplyService.getTransferApplyByUser(user);
		int totalSize = transferApplyList.size();
		totalPage = totalSize / 10;
		if (totalSize % 10 > 0) {
			totalPage ++;
		}
		
		return "transapply_record";
	}
	
	@SuppressWarnings("unchecked")
	public String transApplyAjaxList(){
		HttpServletRequest request = getRequest();
		String dateType = request.getParameter("dateType");
		String applyState = request.getParameter("applyState");
		int page  = Integer.parseInt(request.getParameter("page"));
		
		System.out.println(dateType);
		System.out.println(applyState);
		
		if (null == pager) {
			pager = new Pager();
		}
		pager.setPageNumber(page);
		Date end = new Date();
		Date begin = null;
		if ("0".equals(dateType)){//最近7天
			begin = DateUtils.getNextDay(end, -7);
		}else if("1".equals(dateType)){//最近一个月
			begin = DateUtils.getNextDay(end, -30);
		}else if("2".equals(dateType)){
			begin = DateUtils.getNextDay(end, -30 * 3);
		}else if("3".equals(dateType)){
			begin = DateUtils.getNextDay(end, -183);
		}
		
		Integer tradeType = null;
		if("0".equals(applyState)){//审核中
			tradeType = 0;
		}else if("1".equals(applyState)){//审核通过
			tradeType = 1;
		}else if("2".equals(applyState)){//审核没通过
			tradeType = 2;
		}
		
		DetachedCriteria dc = DetachedCriteria.forClass(TransferApply.class);
		
		if(null != tradeType){
			dc.add(Restrictions.eq("transferStatus", tradeType));
		}
		if(null != begin){
			dc.add(Restrictions.between("createDate", begin, end));
		}
		dc.add(Restrictions.eq("fromUser", getSessionUser()));
		pager = applyService.findByPager(pager, dc);
		totalPage = pager.getPageCount();
		System.out.println(pager.getList().size());
		System.out.println(totalPage);
		JsonConfig config = new JsonConfig();
		
		config.registerJsonValueProcessor(Date.class, new DateJsonValueProcessor("yyyy-MM-dd"));
		config.setExcludes(new String[]{"fromUser", "toUser"});
		JSONObject json = JSONObject.fromObject(pager, config);
		return ajax(json);
	}


	// 通知设置
	public String notification() {
		return "notification";
	}
	
	
	@SuppressWarnings("unchecked")
	public String transAjaxList() {
		HttpServletRequest request = getRequest();
		String dateType = request.getParameter("dateType");
		String transType = request.getParameter("transType");
		int page  = Integer.parseInt(request.getParameter("page"));
		
		if (null == pager) {
			pager = new Pager();
		}
		pager.setPageNumber(page);
		
		Date end = new Date();
		Date begin = null;
		if ("0".equals(dateType)){//最近7天
			begin = DateUtils.getNextDay(end, -7);
		}else if("1".equals(dateType)){//最近一个月
			begin = DateUtils.getNextDay(end, -30);
		}else if("2".equals(dateType)){
			begin = DateUtils.getNextDay(end, -30 * 3);
		}else if("3".equals(dateType)){
			begin = DateUtils.getNextDay(end, -365);
		}
		
		Integer tradeType = null;
		if("0".equals(transType)){//投资
			tradeType = 0;
		}else if("1".equals(transType)){//充值
			tradeType = 1;
		}else if("2".equals(transType)){//提现
			tradeType = 2;
		}else if("3".equals(transType)){//收益
			tradeType = 3;
		}
		
		DetachedCriteria dc = DetachedCriteria.forClass(AccountRecord.class);
		
		if(null != tradeType){
			dc.add(Restrictions.eq("actionType", tradeType));
		}
		if(null != begin){
			dc.add(Restrictions.between("createDate", begin, end));
		}
		dc.add(Restrictions.eq("user", getSessionUser()));
		pager = accountRecordService.findByPager(pager, dc);
		totalPage = pager.getPageCount();
		System.out.println(pager.getList().size());
		JsonConfig config = new JsonConfig();
		config.registerJsonValueProcessor(Date.class, new DateJsonValueProcessor("yyyy-MM-dd"));
		config.setExcludes(new String[]{"user"});
		JSONObject json = JSONObject.fromObject(pager, config);
		return ajax(json);
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Grade getGrade() {
		return grade;
	}

	public void setGrade(Grade grade) {
		this.grade = grade;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public ProjectRecord getProjectRecord() {
		return projectRecord;
	}

	public void setProjectRecord(ProjectRecord projectRecord) {
		this.projectRecord = projectRecord;
	}

	public List<Project> getProjectList() {
		return projectList;
	}

	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}

	public List<ProjectRecord> getProjectRecordList() {
		return projectRecordList;
	}

	public void setProjectRecordList(List<ProjectRecord> projectRecordList) {
		this.projectRecordList = projectRecordList;
	}

	public List<Dictionary> getHkfs() {
		return hkfs;
	}

	public void setHkfs(List<Dictionary> hkfs) {
		this.hkfs = hkfs;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public List<Rates> getRatesList() {
		return ratesList;
	}

	public void setRatesList(List<Rates> ratesList) {
		this.ratesList = ratesList;
	}

	public List<AccountRecord> getAccountRecordList() {
		return accountRecordList;
	}

	public void setAccountRecordList(List<AccountRecord> accountRecordList) {
		this.accountRecordList = accountRecordList;
	}

	public List<Card> getCardList() {
		return cardList;
	}

	public void setCardList(List<Card> cardList) {
		this.cardList = cardList;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCashPassword() {
		return cashPassword;
	}

	public void setCashPassword(String cashPassword) {
		this.cashPassword = cashPassword;
	}

	public AccountRecord getAccountRecord() {
		return accountRecord;
	}

	public void setAccountRecord(AccountRecord accountRecord) {
		this.accountRecord = accountRecord;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getCash_result() {
		return cash_result;
	}

	public void setCash_result(String cash_result) {
		this.cash_result = cash_result;
	}

	public int getAccountProjectNumber() {
		return accountProjectNumber;
	}

	public void setAccountProjectNumber(int accountProjectNumber) {
		this.accountProjectNumber = accountProjectNumber;
	}

	public BigDecimal getAccountProjectAmount() {
		return accountProjectAmount;
	}

	public void setAccountProjectAmount(BigDecimal accountProjectAmount) {
		this.accountProjectAmount = accountProjectAmount;
	}

	public BigDecimal getAccountProjectAmount_1() {
		return accountProjectAmount_1;
	}

	public void setAccountProjectAmount_1(BigDecimal accountProjectAmount_1) {
		this.accountProjectAmount_1 = accountProjectAmount_1;
	}

	public BigDecimal getAccountProjectAmount_2() {
		return accountProjectAmount_2;
	}

	public void setAccountProjectAmount_2(BigDecimal accountProjectAmount_2) {
		this.accountProjectAmount_2 = accountProjectAmount_2;
	}

	public BigDecimal getAccountCashAmount() {
		return accountCashAmount;
	}

	public void setAccountCashAmount(BigDecimal accountCashAmount) {
		this.accountCashAmount = accountCashAmount;
	}

	public BigDecimal getAccountRechargeAmount() {
		return accountRechargeAmount;
	}

	public void setAccountRechargeAmount(BigDecimal accountRechargeAmount) {
		this.accountRechargeAmount = accountRechargeAmount;
	}

	public BigDecimal getAccountProfitAmount() {
		return accountProfitAmount;
	}

	public void setAccountProfitAmount(BigDecimal accountProfitAmount) {
		this.accountProfitAmount = accountProfitAmount;
	}

	public BigDecimal getAccountProfitAmount_1() {
		return accountProfitAmount_1;
	}

	public void setAccountProfitAmount_1(BigDecimal accountProfitAmount_1) {
		this.accountProfitAmount_1 = accountProfitAmount_1;
	}

	public List<WebMail> getMailList() {
		return mailList;
	}

	public void setMailList(List<WebMail> mailList) {
		this.mailList = mailList;
	}

	private User getSessionUser() {
		ActionContext actionContext = ActionContext.getContext();

		return (User) actionContext.getSession().get("user");
	}

	public List<Dictionary> getXlList() {
		return xlList;
	}

	public void setXlList(List<Dictionary> xlList) {
		this.xlList = xlList;
	}

	public List<Apply> getApplyList() {
		return applyList;
	}

	public void setApplyList(List<Apply> applyList) {
		this.applyList = applyList;
	}

	public List<TransferApply> getTransferApplyList() {
		return transferApplyList;
	}

	public void setTransferApplyList(List<TransferApply> transferApplyList) {
		this.transferApplyList = transferApplyList;
	}

	public List<Dictionary> getSqList() {
		return sqList;
	}

	public void setSqList(List<Dictionary> sqList) {
		this.sqList = sqList;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	
}