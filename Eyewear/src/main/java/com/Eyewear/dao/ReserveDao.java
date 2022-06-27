package com.Eyewear.dao;

import java.util.List;

import com.Eyewear.vo.StoreVO;

public interface ReserveDao {
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception;
}
