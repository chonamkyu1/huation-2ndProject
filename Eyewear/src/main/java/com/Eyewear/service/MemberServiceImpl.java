package com.Eyewear.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Eyewear.dao.MemberDao;
import com.Eyewear.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	
	
	@Override
	public MemberVO getMember(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO login(MemberVO memberVO) {
		return memberDao.login(memberVO);
	}

	@Override
	public void memberJoin(MemberVO memberVO) throws Exception {
		System.out.println("serviceImpl");
		memberDao.memberJoin(memberVO);
	}

	@Override
	public int idCheck(String mid) throws Exception {
		return memberDao.idCheck(mid);
	}

	@Override
	public MemberVO findId(MemberVO memberVO) throws Exception {
		return memberDao.findId(memberVO);
	}

	@Override
	public int findPw(MemberVO memberVO) throws Exception {
		return memberDao.findPw(memberVO);
	}

	@Override
	public MemberVO myPage(MemberVO memberVO) throws Exception {
		return memberDao.myPage(memberVO);
	}

	
	
	
	
}
