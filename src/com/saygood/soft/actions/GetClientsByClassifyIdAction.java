/**
 * 
 */
package com.saygood.soft.actions;

import com.saygood.soft.base.ActionBase;
import com.saygood.soft.model.Client;
import com.saygood.soft.service.UserService;

import java.util.List;


/**
 * Action:get list of clients
 * 
 * @author zhang kaiqiang 2013-5-20 9:54:45
 * 
 */
public class GetClientsByClassifyIdAction extends ActionBase {

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private List<Client> clientList;
	private int size;
	private int classifyId;
	private int firtResult;
	private int maxResult;
	private String message;

	@Override
	public String execute() throws Exception {
		try {
			clientList = userService.getClientListByClassifyId(classifyId,firtResult, maxResult);
			if (clientList != null) {
				size = clientList.size();
				message = "sucess";
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

	public List<Client> getClientList() {
		return clientList;
	}

	public void setClientList(List<Client> clientList) {
		this.clientList = clientList;
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

	public int getClassifyId() {
		return classifyId;
	}

	public void setClassifyId(int classifyId) {
		this.classifyId = classifyId;
	}

}
