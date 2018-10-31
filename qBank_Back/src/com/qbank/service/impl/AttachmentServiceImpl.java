package com.qbank.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.qbank.dao.AttachmentDao;
import com.qbank.entity.Attachment;
import com.qbank.service.AttachmentService;

/**@author  作者: LittleVv
 **@date 创建时间：2016-3-9 上午10:54:53
 **@version 1.0 
 **@parameter 
 **@since  
 **@return  
 **/
@Service
public class AttachmentServiceImpl extends BaseServiceImpl<Attachment, String>
		implements AttachmentService {

	@Resource
	AttachmentDao attachmentDao;
	@Resource
	public void setBaseDao(AttachmentDao attachmentDao){
		super.setBaseDao(attachmentDao);
	}
	

}
