package com.Eyewear.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Eyewear.service.ReserveMapper;
import com.Eyewear.vo.StoreVO;

@Repository
public class ReserveDaoImpl implements ReserveDao{

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception {
		ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
		
		return mapper.storeList(storeVO);
	}

}
