package com.saygood.soft.actions;


import com.saygood.soft.base.ActionBase;
import com.saygood.soft.model.Client;
import com.saygood.soft.service.UserService;

/**
 * query client Object
 * @author zhang kaiqiang
 * 2013-5-20 14:22:52
 *
 */
public class GetClientAction extends ActionBase {

	private static final long serialVersionUID = 1L;
	private Client client;
	private String info;
	private int score;
	private int classfyId;
	private String message;

	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String login() throws Exception {
       try{
		Client clientTemp = new Client();
		if (info != null) {
			clientTemp.setInfo(info);
		}
		client = userService.getClient(clientTemp);
		if (client != null) {
			session.put("client", client);
			message="sucess";
		}else{
			message="no result!";
		}
		return SUCCESS;
       }catch(Exception e){
    	   message="exception!";
    	   return INPUT;
       }
		
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

	public UserService getUserService() {
		return userService;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getClassfyId() {
		return classfyId;
	}

	public void setClassfyId(int classfyId) {
		this.classfyId = classfyId;
	}

	

}
