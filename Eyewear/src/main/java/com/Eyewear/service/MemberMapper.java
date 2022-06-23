package com.Eyewear.service;

import com.Eyewear.vo.MemberVO;

public interface MemberMapper {

	public MemberVO login(MemberVO memberVO);
	public void memberJoin(MemberVO memberVO) throws Exception;
	public int idCheck(String mid) throws Exception;
}
