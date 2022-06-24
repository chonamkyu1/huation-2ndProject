package com.Eyewear.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Eyewear.service.MemberMapper;
import com.Eyewear.vo.MemberVO;

@Repository
public class MemberDaoImpl implements MemberDao{

	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVO login(MemberVO memberVO) {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		
		return mapper.login(memberVO);
	}

	@Override
	public void memberJoin(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		System.out.println("memberDaoImpl");
		 mapper.memberJoin(memberVO);
	}

	@Override
	public int idCheck(String mid) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.idCheck(mid);
	}

	@Override
	public MemberVO findId(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.findId(memberVO);
		
	}

	@Override
	public int findPw(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.findPw(memberVO);
	}

	@Override
	public MemberVO myPage(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.myPage(memberVO);
	}

}
