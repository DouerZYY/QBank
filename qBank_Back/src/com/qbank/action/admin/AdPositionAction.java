package com.qbank.action.admin;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.beans.BeanUtils;
import com.qbank.entity.AdPosition;
import com.qbank.service.AdPositionService;

/**
 * 广告位置Action类
 * @author Administrator
 *
 */
public class AdPositionAction extends BaseAdminAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6349888504388612986L;
	private AdPosition adPosition;
	private List<AdPosition> adPositionList;
	
	@Resource
	AdPositionService adPositionService;
	
	/**
	 * 
	 * 功能描述：获取广告位置信息列表
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String list(){
		adPositionList = adPositionService.getAll();
		if(adPositionList.isEmpty()){
			isNull = 1;
		}
		return "list";
	}
	
	/**
	 * 
	 * 功能描述：广告位置信息添加
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String add(){
		return "input";
	}
	
	/**
	 * 
	 * 功能描述：广告位置信息保存
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String save(){
		adPositionService.save(adPosition);
		adPositionList = adPositionService.getAll();
		if(adPositionList.isEmpty()){
			isNull = 1;
		}
		return "list";
	}
	
	/**
	 * 
	 * 功能描述：广告位置信息删除
	 * 输入参数：广告信息id
	 * 返回类型：String
	 */
	public String delete(){
		adPositionService.delete(id);
		adPositionList = adPositionService.getAll();
		if(adPositionList.isEmpty()){
			isNull = 1;
		}
		return "list";
	}
	
	/**
	 * 
	 * 功能描述：广告位置信息编辑
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String edit(){
		adPosition = adPositionService.get(id);
		return "input";
	}
	/**
	 * 
	 * 功能描述：广告位置信息添加
	 * 输入参数：无
	 * 返回类型：String
	 */
	public String update(){
		AdPosition adp = adPositionService.load(id);//根据页面获取以前对象
		//将修改后的对象rates的部分属性拷贝给原来的对象
		BeanUtils.copyProperties(adPosition, adp, new String[]{"id", "createDate", "modifyDate"});
		adPositionService.update(adp);//更新数据
		adPositionList = adPositionService.getAll();//获取列表
		if(adPositionList.isEmpty()){
			isNull = 1;
		}
		return "list";
	}
	
	public AdPosition getAdPosition() {
		return adPosition;
	}
	public void setAdPosition(AdPosition adPosition) {
		this.adPosition = adPosition;
	}
	public List<AdPosition> getAdPositionList() {
		return adPositionList;
	}
	public void setAdPositionList(List<AdPosition> adPositionList) {
		this.adPositionList = adPositionList;
	}
	
	
}
