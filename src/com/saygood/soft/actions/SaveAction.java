/**
 * 
 */
package com.saygood.soft.actions;


import com.saygood.soft.base.ActionBase;
import com.saygood.soft.model.Client;
import com.saygood.soft.service.UserService;

/**
 * save infomation of client
 * 
 * @author zhang kaiqiang 2013-5-20 9:54:45
 * 
 */
public class SaveAction extends ActionBase {

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private String info;
	private int score;
	private int classifyId;
	private String message;

	@Override
	public String execute() throws Exception {
		
		if (info != null && !info.equals("")) {
			Client client=new Client();
			client.setInfo(info);
			client.setScore(score);
			client.setClassifyId(classifyId);
			Client temp=userService.getClient(client);
			if(temp!=null && temp.getClassifyId()!=classifyId){
				int flag = userService.saveClient(client);
				if (flag == 1) {
					message = "Upload Success";
				} else {
					message = "Fail Upload ";
				}
				return SUCCESS;
			}
			if(temp!=null && score>=temp.getScore()){
				userService.updateClient(client);
				message = "update Success";
				return SUCCESS;
			}else{
			
			int flag = userService.saveClient(client);
			if (flag == 1) {
				message = "Upload Success";
			} else {
				message = "Fail Upload ";
			}
			return SUCCESS;
			}
		}
		message="params are null";
		return INPUT;
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

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getClassifyId() {
		return classifyId;
	}

	public void setClassifyId(int classifyId) {
		this.classifyId = classifyId;
	}

	
}
