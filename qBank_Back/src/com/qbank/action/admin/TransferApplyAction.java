package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.entity.Dictionary;
import com.qbank.entity.TransferApply;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;
import com.qbank.service.TransferApplyService;

/**
 * 债权转让Action类
 * @author Administrator
 *
 */
public class TransferApplyAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5980057528871499096L;
	private TransferApply transferApply;
	private List<TransferApply> transferApplyList;
	private List<Dictionary> dicList; 
	
	@Resource
	DictionaryService dictionaryService;
	@Resource
	DicTypeService dicTypeService;
	@Resource
	TransferApplyService transferApplyService;

	/**
	 * 
	 * 功能描述：获取转让申请列表
	 * 输入参数：
	 * 返回类型：String
	 */
	public String list() {
		//transferApplyList = transferApplyService.getAll();
		dicList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("SQZT"));
		pager = transferApplyService.findByPager(pager);
		return LIST;
	}

	/**
	 * 
	 * 功能描述：添加转让信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add() {
		dicList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("SQZT"));
		return INPUT;
	}

	/**
	 * 
	 * 功能描述：保存转让信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save() {
		transferApplyService.save(transferApply);
		return list();
	}

	/**
	 * 
	 * 功能描述：转让信息删除
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String delete() {
		transferApplyService.delete(id);
		return list();
	}

	/**
	 * 
	 * 功能描述：转让信息编辑
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit() {
		transferApply = transferApplyService.get(id);
		dicList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("SQZT"));
		return INPUT;
	}

	/**
	 * 
	 * 功能描述：转让信息更新
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update() {
		TransferApply trApply = transferApplyService.load(id);// 根据页面获取以前对象
		BeanUtils.copyProperties(transferApply, trApply, new String[] { "id", "createDate", "modifyDate" });// 将修改后的对象rates的部分属性拷贝给原来的对象
		transferApplyService.update(trApply);// 更新数据
		return list();
	}

	public TransferApply getTransferApply() {
		return transferApply;
	}

	public void setTransferApply(TransferApply transferApply) {
		this.transferApply = transferApply;
	}

	public List<TransferApply> getTransferApplyList() {
		return transferApplyList;
	}

	public void setTransferApplyList(List<TransferApply> transferApplyList) {
		this.transferApplyList = transferApplyList;
	}

	public List<Dictionary> getDicList() {
		return dicList;
	}

	public void setDicList(List<Dictionary> dicList) {
		this.dicList = dicList;
	}
	

}
