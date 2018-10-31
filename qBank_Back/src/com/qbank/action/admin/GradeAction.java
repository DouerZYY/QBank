package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.entity.Grade;
import com.qbank.service.GradeService;

/**
 * 用户等级Action类
 * @author Administrator
 *
 */
public class GradeAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6131223340632650719L;
	@Resource
	GradeService gradeService;
	
	private Grade grade;
	private List<Grade> gradeList;
	
	/**
	 * 
	 * 功能描述：用户等级列表获取
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		gradeList = gradeService.getAll();
		if(gradeList.isEmpty()){
			isNull = 1;
		}
		return LIST;
	}
	/**
	 * 
	 * 功能描述：用户等级信息添加
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		return INPUT;
	}
	/**
	 * 
	 * 功能描述：用户等级信息保存
	 * 输入参数：
	 * 返回类型：String
	 */
	public String save(){
		gradeService.save(grade);
		gradeList = gradeService.getAll();
		if(gradeList.isEmpty()){
			isNull = 1;
		}
		return LIST;
	}
	
	/**
	 * 
	 * 功能描述：用户等级信息删除
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String delete(){
		gradeService.delete(id);
		gradeList = gradeService.getAll();
		if(gradeList.isEmpty()){
			isNull = 1;
		}
		return LIST;
	}
	/**
	 * 
	 * 功能描述：用户等级信息编辑
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		grade = gradeService.load(id);
		
		return INPUT;
	}
	/**
	 * 
	 * 功能描述：用户等级信息更新
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update(){
		Grade gd = gradeService.load(id);
		BeanUtils.copyProperties(grade, gd, new String[]{"id", "createDate", "modifyDate"});
		gradeService.update(gd);
		gradeList = gradeService.getAll();
		if(gradeList.isEmpty()){
			isNull = 1;
		}
		return LIST;
	}
	
	
	
	public Grade getGrade() {
		return grade;
	}
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	public List<Grade> getGradeList() {
		return gradeList;
	}
	public void setGradeList(List<Grade> gradeList) {
		this.gradeList = gradeList;
	}
	
	
}
