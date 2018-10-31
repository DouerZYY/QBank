package com.qbank.action.shop;

import javax.annotation.Resource;

import com.qbank.service.AccountService;

/** * @author  作者 LittleVv 
 * @date 创建时间：2016年3月14日 下午3:58:03 
 * @version 1.0 
 **/
public class AccountAction extends BaseShopAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 58868048896267L;
	
	@Resource
	AccountService accountService;
}
