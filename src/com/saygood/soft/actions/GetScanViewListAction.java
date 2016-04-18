/**
 * 
 */
package com.saygood.soft.actions;


import com.saygood.soft.base.ActionBase;
import com.saygood.soft.model.Client;
import com.saygood.soft.model.ScanViewModel;
import com.saygood.soft.service.UserService;

import java.util.List;

/**
 * Action:get list of scanview models
 * 
 * @author KrisZhang 2016-04-16 01:02:44
 * 
 */
public class GetScanViewListAction extends ActionBase {

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private List<ScanViewModel> scanViewModelList;
	private int size;
	private int firtResult;
	private int maxResult;
	private String message;

	@Override
	public String execute() throws Exception {
		try {
			scanViewModelList = userService.getScanViewList(firtResult, maxResult);
			if (scanViewModelList != null) {
				size = scanViewModelList.size();
				message = "success";
			} else {
				message = "no result";
			}
			return SUCCESS;
		} catch (Exception e) {
			return INPUT;
		}

	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public List<ScanViewModel> getScanViewModelList() {
		return scanViewModelList;
	}

	public void setScanViewModelList(List<ScanViewModel> scanViewModelList) {
		this.scanViewModelList = scanViewModelList;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getFirtResult() {
		return firtResult;
	}

	public void setFirtResult(int firtResult) {
		this.firtResult = firtResult;
	}

	public int getMaxResult() {
		return maxResult;
	}

	public void setMaxResult(int maxResult) {
		this.maxResult = maxResult;
	}

}
