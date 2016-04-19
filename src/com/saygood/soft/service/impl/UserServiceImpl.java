/**
 * 
 */
package com.saygood.soft.service.impl;


import com.saygood.soft.dao.BaseDao;
import com.saygood.soft.model.Client;
import com.saygood.soft.model.ScanViewModel;
import com.saygood.soft.service.UserService;

import java.util.List;


/**
 * @author IA
 * 
 */
public class UserServiceImpl implements UserService {
	private BaseDao baseDao;

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	@Override
	public Client getClient(Client client) {

		List<Client> list = baseDao.findAll("from Client where info = ?",
				Client.class, new Object[] { client.getInfo() });
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	/**
	 * 
	 * zhang kaiqiang 2013-5-20 13:49:29
	 */
	@Override
	public int saveClient(Client client) {
		int flag = 0;

		try {
			baseDao.save(client);
			flag = 1;
		} catch (Exception e) {
			flag = 0;
			 e.printStackTrace();
		}
		return flag;
	}

	/**
	 * zhang kaiqiang 2013-5-20 14:57:35
	 * 
	 * @return 0-fail, 1-success
	 */
	@Override
	public int updateClient(Client client) {
		int flag = 0;
		try {
			Object[] params = new Object[] { client.getScore(),
					client.getInfo(),client.getClassifyId() };
			baseDao.updateClient(
					"update Client c set c.score=? where c.info=? and c.classifyId=?",
					Client.class, params);
			flag = 1;
		} catch (Exception e) {
			flag = 0;
		}
		return flag;
	}

	@Override
	public int saveScanViewModel(ScanViewModel scanViewModel) {
		int flag = 0;

		try {
			baseDao.save(scanViewModel);
			flag = 1;
		} catch (Exception e) {
			flag = 0;
//			 e.printStackTrace();
		}
		return flag;
	}

	@Override
	public int updateScanViewModel(ScanViewModel scanViewModel) {
		int flag = 0;
		try {
			Object[] params = new Object[] {
					scanViewModel.getTitle(),scanViewModel.getContent(),scanViewModel.getPublisher(),scanViewModel.getId() };
			baseDao.updateClient("update ScanViewModel svm set  svm.title=? , svm.content=?,svm.publisher where svm.id=?",
					ScanViewModel.class, params);
			flag = 1;
		} catch (Exception e) {
			flag = 0;
		}
		return flag;
	}

	/**
	 * zhang kaiqiang 
	 * 2013-5-20 16:18:26
	 * @param firstResult
	 * @param maxResult
	 * @return the list of clients
	 */
	@Override
	public List<Client> getClientList(int firstResult, int maxResult) {
		return baseDao.findByPage("from Client c order by c.score DESC", Client.class, firstResult, maxResult);
	}
	
	/**
	 * zhang kaiqiang 
	 * 2013-5-20 16:18:26
	 * @param classifyId
	 * @param firstResult
	 * @param maxResult
	 * @return the list of clients
	 */
	@Override
	public List<Client> getClientListByClassifyId(int classifyId,int firstResult, int maxResult) {
		return baseDao.findByPage("from Client c where classifyId=? order by c.score DESC ", Client.class,classifyId, firstResult, maxResult);
	}


	@Override
	public List<ScanViewModel> getScanViewList(int firtResult, int maxResult) {
		return baseDao.findByPage("from ScanViewModel svm order by svm.id ASC", ScanViewModel.class,firtResult,maxResult);
	}

	@Override
	public ScanViewModel getScanViewModel(ScanViewModel scanViewModel) {
		List<ScanViewModel> list = baseDao.findAll("from ScanViewModel svm  where svm.id = ?",
				ScanViewModel.class, new Object[] { scanViewModel.getId() });
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
}
