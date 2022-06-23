package com.Eyewear.dao;

import com.Eyewear.vo.MemberVO;

public interface MemberDao {

	public MemberVO login(MemberVO memberVO);
	public void memberJoin(MemberVO memberVO) throws Exception;
	public int idCheck(String mid) throws Exception;
	
}
