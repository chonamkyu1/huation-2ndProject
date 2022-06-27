package com.Eyewear.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Eyewear.dao.ReserveDao;
import com.Eyewear.vo.StoreVO;

@Service
public class ReserveServiceImpl implements ReserveService {

	@Autowired
	ReserveDao reserveDao;
	
	@Override
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception {
		return reserveDao.storeList(storeVO);
	}

}
