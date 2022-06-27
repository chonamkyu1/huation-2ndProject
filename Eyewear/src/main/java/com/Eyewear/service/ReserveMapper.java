package com.Eyewear.service;

import java.util.List;

import com.Eyewear.vo.StoreVO;

public interface ReserveMapper {
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception;
}
