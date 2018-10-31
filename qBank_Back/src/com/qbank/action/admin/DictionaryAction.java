package com.qbank.action.admin;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.entity.DicType;
import com.qbank.entity.Dictionary;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;

/**
 * 字典信息Action类
 * @author Administrator
 *
 */
public class DictionaryAction extends BaseAdminAction {


	private static final long serialVersionUID = 1L;
	private Dictionary dictionary;
	private List<Dictionary> dicList;
	private DicType dicType;
	private String dicTypeId;
	private List<DicType> dicTypeList;
	
	@Resource
	private DictionaryService dictionaryService;
	@Resource
	private DicTypeService dicTypeService;
	
	/**
	 * 
	 * 功能描述：获取字典信息列表
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		//dicList = dictionaryService.getAll();
		pager = dictionaryService.findByPager(pager);
		return "list";
	}
	
	/**
	 * 
	 * 功能描述：添加字典信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		dicTypeList = dicTypeService.getAll();
		return "input";
	}
	
	/**
	 * 
	 * 功能描述：保存字典信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save(){
		dictionary.setDictype(dicTypeService.load(dicTypeId));//保存字典类型信息
		System.out.println(dictionary.getDicCode());
		System.out.println(dictionary.getDicOrder());
		dictionaryService.save(dictionary);
		pager = dictionaryService.findByPager(pager);
		return "list";
	}
	
	/**
	 * 
	 * 功能描述：编辑字典信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		dictionary = dictionaryService.load(id);
		dicTypeId = dictionary.getDictype().getId();
		dicTypeList = dicTypeService.getAll();
		
		return "input";
		
	}
	
	/**
	 * 
	 * 功能描述：删除字典信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String delete(){
		dictionaryService.delete(id);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：更新字典信息
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update(){
		dicTypeList = dicTypeService.getAll();
		Dictionary dicNew = new Dictionary();
		dicNew = dictionaryService.load(id);
		BeanUtils.copyProperties(dictionary, dicNew, new String[]{"id", "createDate", "modifyDate"});//将修改后的对象rates的部分属性拷贝给原来的对象
		dicNew.setDictype(dicTypeService.load(dicTypeId));//将字典类型保存至存储的对象中
		dictionaryService.update(dicNew);
		return list();
	}
	
	
	public String getDicTypeId() {
		return dicTypeId;
	}

	public void setDicTypeId(String dicTypeId) {
		this.dicTypeId = dicTypeId;
	}

	public Dictionary getDictionary() {
		return dictionary;
	}
	public void setDictionary(Dictionary dictionary) {
		this.dictionary = dictionary;
	}
	public List<Dictionary> getDicList() {
		return dicList;
	}
	public void setDicList(List<Dictionary> dicList) {
		this.dicList = dicList;
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
