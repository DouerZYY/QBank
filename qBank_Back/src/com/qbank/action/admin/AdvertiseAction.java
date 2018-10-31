package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import com.qbank.entity.Advertise;
import com.qbank.service.AdvertiseService;

/**
 * 广告信息Action类
 * @author Administrator
 *
 */

public class AdvertiseAction extends BaseAdminAction {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3687942288543418420L;
	private Advertise advertise;
	private List<Advertise> advertiseList;
	
	@Resource
	AdvertiseService advertiseService;
	
	/**
	 * 
	 * 功能描述：获取广告信息列表
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		advertiseList = advertiseService.getAll();
		pager = advertiseService.findByPager(pager);
		return LIST;
	}
	/**
	 * 
	 * 功能描述：广告信息添加
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		return "input";
	}
	/**
	 * 
	 * 功能描述：广告信息保存
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save(){
		advertiseService.save(advertise);
		return list();
	}
	/**
	 * 
	 * 功能描述：广告信息编辑
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		advertise = advertiseService.get(id);
		return "input";
	}
	/**
	 * 
	 * 功能描述：广告信息更新
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update(){
		Advertise ad = advertiseService.load(id);//根据页面获取以前对象
		//将修改后的对象rates的部分属性拷贝给原来的对象
		BeanUtils.copyProperties(advertise, ad, new String[]{"id", "createDate", "modifyDate"});
		advertiseService.update(ad);//更新数据
		return list();
	}
	/**
	 * 
	 * 功能描述：广告信息删除
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String delete(){
		advertiseService.delete(id);
		return list();
	}
	
	public Advertise getAdvertise() {
		return advertise;
	}
	public void setAdvertise(Advertise advertise) {
		this.advertise = advertise;
	}
	public List<Advertise> getAdvertiseList() {
		return advertiseList;
	}
	public void setAdvertiseList(List<Advertise> advertiseList) {
		this.advertiseList = advertiseList;
	}
	

}
