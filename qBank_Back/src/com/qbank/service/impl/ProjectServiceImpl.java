package com.qbank.service.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;








import org.springframework.transaction.annotation.Transactional;

import com.qbank.dao.ProjectDao;
import com.qbank.entity.Account;
import com.qbank.entity.AccountRecord;
import com.qbank.entity.Project;
import com.qbank.entity.ProjectRecord;
import com.qbank.entity.WebMail;
import com.qbank.service.AccountRecordService;
import com.qbank.service.AccountService;
import com.qbank.service.ProjectRecordService;
import com.qbank.service.ProjectService;
import com.qbank.service.UserService;
import com.qbank.service.WebMailService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:58:53
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class ProjectServiceImpl extends BaseServiceImpl<Project, String>
		implements ProjectService {
	
	@Resource
	ProjectDao projectDao;
	@Resource
	AccountService accountService;
	@Resource
	UserService userService;
	@Resource
	ProjectRecordService projectRecordService;
	@Resource
	AccountRecordService recordService;
	@Resource
	WebMailService mailService;
	@Resource
	public void setBaseDao(ProjectDao projectDao) {
		super.setBaseDao(projectDao);
	}
	@Override
	public List<Project> getPro(Integer num) {
		// TODO Auto-generated method stub
		return projectDao.getPro(num);
	}
	@Override
	public Project getInfoById(String id) {
		// TODO Auto-generated method stub
		return projectDao.getInfoById(id);
	}
	
	@Transactional
	public void projectBuy(String userId,BigDecimal amount, String id) {
		Account account = accountService.getInfoByUser(userService.load(userId));//获取用户账户
		Project project = load(id);
		//个人账户信息更新
		account.setInProfit(amount.multiply(new BigDecimal(0.18)));//
		account.setAmount(account.getAmount().subtract(amount));
		accountService.update(account);//更新账户信息
		//个人账户流水修改
		AccountRecord accountRecord = new AccountRecord();
		accountRecord.setActionType(2);
		accountRecord.setAmount(amount);
		accountRecord.setUser(userService.load(userId));
		recordService.save(accountRecord);
		//项目流水信息
		ProjectRecord record = new ProjectRecord();
		record.setUser(userService.load(userId));//投资人Id
		record.setIncestAmount(amount);//投资金额
		record.setIsWard(1);
		record.setPayStatus(1);
		record.setProjectId(id);
		record.setInvestTime(new Date());
		record.setUserName(userService.load(userId).getName());
		projectRecordService.save(record);
		//项目信息更改
		project.setInvestAmount(project.getInvestAmount().subtract(amount));
		update(project);
		//发送站内信
		WebMail mail = new WebMail();
		mail.setUser(userService.load(userId));
		mail.setTitle("投资");
		mail.setContent("恭喜您刚刚在项目"+project.getProjectName()+"中成功投资"+amount+"元");
		mailService.save(mail);
		
		
	}
}
