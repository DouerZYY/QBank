package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.bean.Pager;
import com.qbank.entity.Dictionary;
import com.qbank.entity.Rates;
import com.qbank.service.DicTypeService;
import com.qbank.service.DictionaryService;
import com.qbank.service.RatesService;
/**
 * 利率管理Action类
 * @author Administrator
 *
 */
public class RatesAction extends BaseAdminAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2838880411582920146L;
	private Rates rates;
	private List<Rates> ratesList;
	private List<Dictionary> dicList;
	private Pager pager;
	


	@Resource
	RatesService ratesService;
	@Resource
	DicTypeService dicTypeService;
	@Resource
	DictionaryService dictionaryService;
	
	/**
	 * 
	 * 功能描述：首页列表方法
	 * 输入参数：
	 * 返回类型：String
	 */
	public String list(){
		dicList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("LLLX"));//获取利率类型的字典信息
		pager = ratesService.findByPager(pager);
		return LIST;
	}
	
	/**
	 * 
	 * 功能描述：添加利率信息方法
	 * 输入参数：
	 * 返回类型：String
	 */
	public String add(){
		dicList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("LLLX"));//获取利率类型的字典信息
		return INPUT;
	}
	
	/**
	 * 
	 * 功能描述：保存新加的信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String save(){
		ratesService.save(rates);
		dicList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("LLLX"));//获取利率类型的字典信息
		return list();
	}
	
	/**
	 * 
	 * 功能描述：删除信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String delete(){
		ratesService.delete(id);
		return list();
	}
	
	/**
	 * 
	 * 功能描述：编辑信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String edit(){
		rates= ratesService.get(id);
		dicList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("LLLX"));//获取利率类型的字典信息
		return INPUT;
	}
	
	/**
	 * 
	 * 功能描述：更新信息
	 * 输入参数：
	 * 返回类型：String
	 */
	public String update(){
		Rates rate = ratesService.load(id);//根据页面获取以前对象
		BeanUtils.copyProperties(rates, rate, new String[]{"id", "createDate", "modifyDate"});//将修改后的对象rates的部分属性拷贝给原来的对象
		ratesService.update(rate);//更新数据
		dicList = dictionaryService.getDicByCode(dicTypeService.getTypeByCode("LLLX"));//获取利率类型的字典信息
		return list();
	}
	
	public Rates getRates() {
		return rates;
	}
	public void setRates(Rates rates) {
		this.rates = rates;
	}
	public List<Rates> getRatesList() {
		return ratesList;
	}
	public void setRatesList(List<Rates> ratesList) {
		this.ratesList = ratesList;
	}

	public List<Dictionary> getDicList() {
		return dicList;
	}

	public void setDicList(List<Dictionary> dicList) {
		this.dicList = dicList;
	}
	
	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}
	
	
	
	
}
