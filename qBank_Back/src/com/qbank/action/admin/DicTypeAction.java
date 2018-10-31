package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;



import com.qbank.entity.DicType;
import com.qbank.service.DicTypeService;

/**
 * 字典类型action类
 * @author Administrator
 *
 */
public class DicTypeAction extends BaseAdminAction {

	private static final long serialVersionUID = 1L;
	private DicType dicType;
	private List<DicType> dicTypeList;
	@Resource
	private DicTypeService dictypeService;

	/**
	 * 
	 * 功能描述：字典类型添加
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		return "input";
	}
	

	/**
	 * 
	 * 功能描述：字典类型信息保存
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save(){
		dictypeService.save(dicType);
		return list();
	}

	/**
	 * 
	 * 功能描述：字典类型列表获取
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		pager = dictypeService.findByPager(pager);
		return LIST;
	}

	/**
	 * 
	 * 功能描述：字典类型信息删除
	 * 输入参数：
	 * 返回类型：String
	 */
	public String  delete(){
		dictypeService.delete(id);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：字典类型信息编辑
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		dicType = dictypeService.load(id);
		return "input";
	}
	
	/**
	 * 
	 * 功能描述：字典类型信息更新
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update(){
		DicType dicTypes =dictypeService.get(id);
		BeanUtils.copyProperties(dicType, dicTypes, new String[]{"id", "createDate", "modifyDate"});//将修改后的对象rates的部分属性拷贝给原来的对象
		dictypeService.update(dicTypes);
		return list();
	}
	
	public DicType getDicType() {
		return dicType;
	}

	public void setDicType(DicType dicType) {
		this.dicType = dicType;
	}

	public List<DicType> getDicTypeList() {
		return dicTypeList;
	}

	public void setDicTypeList(List<DicType> dicTypeList) {
		this.dicTypeList = dicTypeList;
	}
	
	
	
	
}
