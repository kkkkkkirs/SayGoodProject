/**
 * 
 */
package com.saygood.soft.service;
import com.saygood.soft.model.Client;
import com.saygood.soft.model.ScanViewModel;

import java.util.List;


/**
 * @author IA
 *
 */
public interface UserService {

	    Client getClient(Client client);
	   
	   /**
	    * when a client is accepted, save the client infomation
	    * zhang kaiqiang
	    * @param client
	    * @return 0-fail,1-success
	    */
	   int saveClient(Client client);
	   
	   /**
		 * zhang kaiqiang
		 * 2013-5-20 14:57:35
		 * @return 0-fail, 1-success
		 */
	   int updateClient(Client client);
	   
	   /**
	    * zhang kaiqiang
	    * 2013-5-20 16:18:26
	    * @param firtResult
	    * @param maxResult
	    * @return the list of clients
	    */
	   List<Client> getClientList(int firtResult, int maxResult);
	  /**
	    * @author KrisZhang
	    * 2016-04-16 00:42:53
	    * @param firtResult
	    * @param maxResult
	    * @return the list of scanview models
	    */
	   List<ScanViewModel> getScanViewList(int firtResult, int maxResult);
	   
	   /**
	    * zhang kaiqiang
	    * @param classifyId
	    * @param firtResult
	    * @param maxResult
	    * @return
	    */
	   List<Client> getClientListByClassifyId(int classifyId, int firtResult, int maxResult);
		
	
}
