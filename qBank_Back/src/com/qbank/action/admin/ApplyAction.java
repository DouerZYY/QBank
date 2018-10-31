package com.qbank.action.admin;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.entity.Apply;
import com.qbank.entity.Attachment;
import com.qbank.entity.Dictionary;
import com.qbank.service.ApplyService;
import com.qbank.service.AttachmentService;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;

/**
 * 申请信息Action类
 * @author Administrator
 *
 */
public class ApplyAction extends BaseAdminAction {

	
	private static final long serialVersionUID = 1L;
	@Resource 
	ApplyService applyService;
	@Resource
	DicTypeService dicTypeService ;
	@Resource
	DictionaryService dictionaryService;
	@Resource
	AttachmentService attachmentService;
	
	private Apply apply;
	
	private List<Apply> applyList;
	private File attach;
	private String attachFileName;


	private List<Dictionary> zqList;//借款周期
	private List<Dictionary> tkList;//提款时间
	private List<Dictionary> ztList;//申请状态
	
	/**
	 * 
	 * 功能描述：获取申请信息列表
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		pager = applyService.findByPager(pager);
		return LIST;
	}
	
	/**
	 * 
	 * 功能描述：添加申请信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		zqList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("JKZQ"));//借款周期
		tkList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("TKSJ"));//提款时间
		ztList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("SQZT"));//申请状态
		return INPUT;
	}
	
	/**
	 * 
	 * 功能描述：保存申请信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save(){		
		Attachment attachment = new Attachment();
		
		if(null!=attach){
			attachment.setAttachmentUrl(applyService.upLoadFile(attach,attachFileName));
			System.out.println( "file is ok!"+attachFileName);
		}
		attachment.setAttachmentType(2);
		attachment.setAttachmentName(attachFileName);
		attachmentService.save(attachment);		
		apply.setAttachment(attachment);
		applyService.save(apply);
		
		
		return list();
	}
	
	/**
	 * 
	 * 功能描述：编辑申请信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		zqList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("JKZQ"));//借款周期
		tkList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("TKSJ"));//提款时间
		ztList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("SQZT"));//申请状态
		apply = applyService.load(id);
		
		return INPUT;
	}
	
	/**
	 * 
	 * 功能描述：更新申请信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update(){
		Apply applys = new Apply();
		Attachment att = new Attachment();
		applys = applyService.load(id);
		Attachment attachment = applys.getAttachment();
		attachment.setAttachmentType(2);
		if(null!=attach){
			att.setAttachmentUrl(applyService.upLoadFile(attach,attachFileName));
			att.setAttachmentName(attachFileName);
			att.setAttachmentType(2);
			BeanUtils.copyProperties(att, attachment, new String[]{"id", "createDate", "modifyDate"});
			attachmentService.update(attachment);
			
		}
		apply.setAttachment(attachment);
		attachmentService.save(attachment);
		
		deleteFile(attachment.getAttachmentUrl());//删除原有附件
		
		BeanUtils.copyProperties(apply, applys, new String[]{"id", "createDate", "modifyDate"});
		applyService.update(applys);
		return list();
	}

	/**
	 * 
	 * 功能描述：删除申请信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String delete(){
		applyService.delete(id);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：删除文件
	 * 输入参数：文件路径
	 * 返回类型：String
	 */
    public boolean deleteFile(String sPath) {
    	boolean flag = false;
       File  file = new File(sPath);
        // 路径为文件且不为空则进行删除
        if (file.isFile() && file.exists()) {
            file.delete();
            flag = true;
        }
        return flag;
    }
	
	public Apply getApply() {
		return apply;
	}
	public void setApply(Apply apply) {
		this.apply = apply;
	}
	public List<Apply> getApplyList() {
		return applyList;
	}
	public void setApplyList(List<Apply> applyList) {
		this.applyList = applyList;
	}

	public List<Dictionary> getZqList() {
		return zqList;
	}

	public void setZqList(List<Dictionary> zqList) {
		this.zqList = zqList;
	}

	public List<Dictionary> getTkList() {
		return tkList;
	}

	public void setTkList(List<Dictionary> tkList) {
		this.tkList = tkList;
	}

	public List<Dictionary> getZtList() {
		return ztList;
	}

	public void setZtList(List<Dictionary> ztList) {
		this.ztList = ztList;
	}

	public File getAttach() {
		return attach;
	}

	public void setAttach(File attach) {
		this.attach = attach;
	}

	public String getAttachFileName() {
		return attachFileName;
	}

	public void setAttachFileName(String attachFileName) {
		this.attachFileName = attachFileName;
	}
	
	
}
