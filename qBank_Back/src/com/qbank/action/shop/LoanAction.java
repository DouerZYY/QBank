package com.qbank.action.shop;

import java.io.File;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;

import com.cloopen.rest.sdk.utils.DateUtil;
import com.opensymphony.xwork2.Action;
import com.qbank.entity.Apply;
import com.qbank.entity.Attachment;
import com.qbank.entity.Grade;
import com.qbank.entity.Rates;
import com.qbank.entity.User;
import com.qbank.service.ApplyService;
import com.qbank.service.AttachmentService;
import com.qbank.service.GradeService;
import com.qbank.service.RatesService;
import com.qbank.service.UserService;
import com.qbank.util.CommonUtil;
import com.qbank.util.DateUtils;

public class LoanAction extends BaseShopAction {

	private static final long serialVersionUID = 3208762545293516900L;

	@Resource
	private RatesService ratesService;
	@Resource
	private UserService userService;
	@Resource
	private GradeService gradeService;
	@Resource
	private ApplyService applyService;
	@Resource
	private AttachmentService attachmentService;

	
	private String result;
	private List<Rates> ratesList;
	private User user;
	private Apply apply;
	private String imgFileName;
	private File img;
	
	
	public String getImgFileName() {
		return imgFileName;
	}
	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}
	public File getImg() {
		return img;
	}
	public void setImg(File img) {
		this.img = img;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Apply getApply() {
		return apply;
	}
	public void setApply(Apply apply) {
		this.apply = apply;
	}
	public List<Rates> getRatesList() {
		return ratesList;
	}
	public void setRatesList(List<Rates> ratesList) {
		this.ratesList = ratesList;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	
	public String index(){
		user = CommonUtil.getSessionUser(); 
		return "index";
	}
	
	public String loan(){
		user = CommonUtil.getSessionUser();
		if(null==user){
			result="添加失败, 请先登录";
			return "index";
		}
		Attachment attachment = new Attachment();
		System.out.println("111111111");
		if(apply.getApplyAmount().compareTo(BigDecimal.ZERO)>0){
			System.out.println("222222");
			apply.setApplyName(user.getRealName());
			apply.setApplyStatus(0);
			apply.setApplyUser(user);
			apply.setIdNumber(user.getIdNumber());
			if(null!=img){
				System.out.println("333333333");
				
				attachment.setAttachmentName(user.getName()+DateUtils.currentTime("yyyy-MM-dd HH:mm:ss"));
				attachment.setAttachmentType(3);
				attachment.setAttachmentUrl(attachmentService.upLoadFile(img,imgFileName));
				attachment.setId(CommonUtil.getUUID());
				attachment.setCreateDate(new Date());
				attachment.setModifyDate(new Date());
				apply.setAttachment(attachment);
				attachmentService.save(attachment);
			}else{
				System.out.println("4444444");
				result="添加失败, 请上传相关附件以确定您的情况";
				return "index";
			}System.out.println("555555");
			
			applyService.save(apply);
			result="添加成功, 等待管理人员与您联系";
			return "index";
		}System.out.println("666666");
		result="添加失败，借款金额未正确输入";
		return "index";
	}
	
	
	public String updateAttachment(){
		HttpServletRequest request = getRequest();
		String id = (String) request.getAttribute("id");
		if(null==id){
			result="添加失败, 请上传相关附件以确定您的情况";
			return "result";
		}
		apply = applyService.get(id);
		user = CommonUtil.getSessionUser();
		Attachment at =  apply.getAttachment();
		Attachment attachment = new Attachment();
		if(null==img){
			result="添加失败, 请上传相关附件以确定您的情况";
			return "result";
		}
		apply.setApplyStatus(0);
		applyService.update(apply);
		attachment.setAttachmentName(user.getName()+DateUtils.currentTime("yyyy-MM-dd HH:mm:ss"));
		attachment.setAttachmentType(3);
		attachment.setAttachmentUrl(attachmentService.upLoadFile(img,imgFileName));
		BeanUtils.copyProperties(attachment, at, new String[]{"id", "createDate", "modifyDate"});
		attachmentService.update(at);
		return null;
	}
	
}
