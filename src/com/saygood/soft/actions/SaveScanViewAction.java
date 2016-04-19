/**
 * 
 */
package com.saygood.soft.actions;


import com.saygood.soft.base.ActionBase;
import com.saygood.soft.model.Client;
import com.saygood.soft.model.ScanViewModel;
import com.saygood.soft.service.UserService;

/**
 * save infomation of ScanViewModel
 * 
 * @author Kris.Zhang 2016-04-19 14:38:10
 * 
 */
public class SaveScanViewAction extends ActionBase {

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private String title;
	private String content;
	private String publisher;
	private String message;

	@Override
	public String execute() throws Exception {
		
		if ( !"".equals(title) && !"".equals(content) && !"".equals(publisher)) {
			ScanViewModel client=new ScanViewModel();
//			client.setId(scanViewModel.getId());//主键自动递增,不用设置
			client.setContent(content);
			client.setPublisher(publisher);
			client.setTitle(title);
			ScanViewModel temp=userService.getScanViewModel(client);
			if(temp==null){
				int flag = userService.saveScanViewModel(client);
				if (flag == 1) {
					message = "Upload Success";
				} else {
					message = "Fail Upload ";
					return INPUT;
				}
				return SUCCESS;
			} else {
				int flag=userService.updateScanViewModel(client);
				if (flag==1){
					message = "update Success";
				}else {
					message = "update Fail!";
					return INPUT;
				}
				return SUCCESS;
			}
		}else {
			message = "params are null";
		}
		return INPUT;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	
}
