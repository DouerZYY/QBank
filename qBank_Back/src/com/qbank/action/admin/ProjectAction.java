package com.qbank.action.admin;

import java.io.File;
import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.entity.Dictionary;
import com.qbank.entity.Project;
import com.qbank.entity.Rates;
import com.qbank.entity.User;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;
import com.qbank.service.ProjectService;
import com.qbank.service.RatesService;
import com.qbank.service.UserService;
/**
 * 项目管理Action类
 * @author Administrator
 *
 */


public class ProjectAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1817414991460403203L;
	
	@Resource
	ProjectService projectService;
	@Resource
	DictionaryService dicService;
	@Resource
	DicTypeService dicTypeService;
	@Resource
	RatesService ratesService;
	@Resource 
	UserService userService;
	
	private File img;
	private Project project;
	private List<Project> projectList;
	private List<Dictionary> dicList;
    private String imgFileName;
    private List<Dictionary> hkList;//还款方式List
    private List<Rates> ratesList;//利率列表
    private List<Dictionary> termList;//项目期限列表
    private String  userPhone;//申请用户电话号码
	
   /**
    * 
    * 功能描述：项目列表信息
    * 输入参数：
    * 返回类型：String
    */
	public String list(){
		ratesList = ratesService.getAll();//获取利率列表进行比对
		pager = projectService.findByPager(pager);
		return LIST;
	}
	
	/**
	 * 
	 * 功能描述：添加项目界面
	 * 输入参数：
	 * 返回类型：String
	 */
	public String add(){
		hkList = dicService.getDicByCode(dicTypeService.getTypeByCode("HKFS"));
		dicList = dicService.getDicByCode(dicTypeService.getTypeByCode("LLLX"));
		termList = dicService.getDicByCode(dicTypeService.getTypeByCode("TERM"));
		return INPUT;
	}
	
	/**
	 * 
	 * 功能描述：保存添加的信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String save(){
		
		if(null!=img){
			project.setProjectImageUrl(projectService.upLoadFile(img,imgFileName));
		}
		User user = userService.getUserByPhoneNumber(userPhone);
		if(null!= user){
			project.setUser(user);
		}
		project.setInvestAmount(project.getLoanAmount());
		project.setStatus(0);//新建的项目均为可投资的状态
		projectService.save(project);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：删除信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String delete(){
		projectService.delete(id);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：更新项目信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String update(){
		Project pt = projectService.load(id);
		BigDecimal a = pt.getInvestAmount();
		if(null!=img){
			project.setProjectImageUrl(projectService.upLoadFile(img,imgFileName));
		}else{
			project.setProjectImageUrl(pt.getProjectImageUrl());
		}
		BeanUtils.copyProperties(project, pt, new String[]{"id", "createDate", "modifyDate"});
		pt.setInvestAmount(a);
		System.out.println(pt.getLoanDetail());
		User user = userService.getUserByPhoneNumber(userPhone);
		if(null!= user){
			pt.setUser(user);
		}
		projectService.update(pt);
		projectList = projectService.getAll();
		if(!projectList.isEmpty()){
			isNull =1;//如果利率列表不为空，flag为1
		}
		return list();
	}
	
	/**
	 * 
	 * 功能描述：对现有信息进行编辑
	 * 输入参数：
	 * 返回类型：String
	 */
	public String edit(){
		hkList = dicService.getDicByCode(dicTypeService.getTypeByCode("HKFS"));
		dicList = dicService.getDicByCode(dicTypeService.getTypeByCode("LLLX"));
		termList = dicService.getDicByCode(dicTypeService.getTypeByCode("TERM"));
		project = projectService.load(id);
		return INPUT;
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
	public List<Project> getProjectList() {
		return projectList;
	}
	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}
	public List<Dictionary> getDicList() {
		return dicList;
	}
	public void setDicList(List<Dictionary> dicList) {
		this.dicList = dicList;
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
	public List<Dictionary> getHkList() {
		return hkList;
	}
	public void setHkList(List<Dictionary> hkList) {
		this.hkList = hkList;
	}
	public List<Rates> getRatesList() {
		return ratesList;
	}
	public void setRatesList(List<Rates> ratesList) {
		this.ratesList = ratesList;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	
	
	
	
	
	
}
