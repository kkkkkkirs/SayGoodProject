/**
 * 
 */
package com.saygood.soft.actions;


import com.saygood.soft.base.ActionBase;
import com.saygood.soft.model.Client;
import com.saygood.soft.model.ScanViewModel;
import com.saygood.soft.service.UserService;

/**
 * save infomation of client
 * 
 * @author zhang kaiqiang 2013-5-20 9:54:45
 * 
 */
public class SaveScanViewAction extends ActionBase {

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private ScanViewModel scanViewModel;
	private String message;

	@Override
	public String execute() throws Exception {
		
		if (scanViewModel != null && !"".equals(scanViewModel.getContent()) && !"".equals(scanViewModel.getTitle()) && !"".equals(scanViewModel.getPublisher())) {
			ScanViewModel client=new ScanViewModel();
//			client.setId(scanViewModel.getId());//主键自动递增,不用设置
			client.setContent(scanViewModel.getContent());
			client.setPublisher(scanViewModel.getPublisher());
			client.setTitle(scanViewModel.getTitle());
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
				userService.updateScanViewModel(client);
				message = "update Success";
				return SUCCESS;
			}
		}else {
			message = "params are null";
		}
		return INPUT;
	}

	public ScanViewModel getScanViewModel() {
		return scanViewModel;
	}

	public void setScanViewModel(ScanViewModel scanViewModel) {
		this.scanViewModel = scanViewModel;
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
