package com.Eyewear.service;

import java.util.List;

import com.Eyewear.vo.MemberVO;
import com.Eyewear.vo.StoreVO;

public interface MemberService {

	public MemberVO getMember(MemberVO memberVO) throws Exception;
	
	public MemberVO login(MemberVO memberVO) throws Exception;
	public void memberJoin(MemberVO memberVO) throws Exception;
	public int idCheck(String mid) throws Exception;

	public MemberVO findId(MemberVO memberVO) throws Exception;
	public int findPw(MemberVO memberVO) throws Exception;
	public MemberVO myPage(MemberVO memberVO) throws Exception;
	
	
}
