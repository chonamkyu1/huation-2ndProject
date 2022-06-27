package com.Eyewear.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Eyewear.service.MemberService;
import com.Eyewear.service.ReserveService;
import com.Eyewear.vo.MemberVO;
import com.Eyewear.vo.StoreVO;

@Controller
public class ReserveController {
	private static final Logger logger = LoggerFactory.getLogger(ReserveController.class);
	
	@Autowired
	private ReserveService reserveService;
	private MemberService memberService;
	
	
	// 예약 페이지
	
	@RequestMapping(value = "/reserve", method = RequestMethod.GET)
	public String reserveGET(Model model, StoreVO storeVO) throws Exception {
		logger.info("예약 페이지 진입");
		
		List<StoreVO> storeList =  reserveService.storeList(storeVO);
//		System.out.println("storeList : " + storeList);
		model.addAttribute("store", storeList);
		
	
		return "reserve";
	}
	
	
	@RequestMapping(value = "/user/login/reserve/select", method = RequestMethod.GET)
	public String ReserveLoginGET() {
		try {
			logger.info("예약페이지에서 로그인 페이지 진입"); 
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "login";
		
	}
	
	
	@RequestMapping(value = "/user/login/reserve/select", method = RequestMethod.POST)
//	public String login(MemberVO memberVO, Model model, HttpSession session) throws Exception {
	public String ReserveLoginPOST(HttpServletRequest request, MemberVO memberVO, RedirectAttributes rttr) throws Exception {
//		System.out.println("postmapping");
//		System.out.println("전달된 데이터 : " + memberVO);
		
		System.out.println("예약페이지 POST ");
		
//		HttpSession session = request.getSession();
//		MemberVO lvo = memberService.login(memberVO);
		
		logger.info("서비스 성공");
		
//		if (lvo == null) {				// 일치하지 않는 아이디, 비밀번호 입력했을 경우
//			int result = 0;
//			rttr.addFlashAttribute("result", result);
//			return "redirect:/user/login";
//		}
		
//		session.setAttribute("member", lvo);   // 아이디, 비밀번호 일치하는 경우 (로그인 성공)!!, 세션 헤더에 저장
		
//		System.out.println("member: " + lvo);
		
		return "redirect:/reserve/detailReserve";
		
		
//		MemberVO loginMember =  memberService.login(memberVO.getMid(), memberVO.getMpassword());
//		System.out.println("loginMember " + loginMember);
//		if(loginMember != null) {
//			System.out.println("로그인 성공");
////			model.addAttribute("memverVO", loginMember);
////			session.setAttribute("memberVO", memberVO);
//			
//			return "main";
//			
//		} else {
//			System.out.println("로그인 실패");
//			return "login";
//		}
		
//		return null;
		
	}
	
	
	@RequestMapping(value = "/reserve/detailReserve", method = RequestMethod.GET)
	public String detailReserve() throws Exception {
		logger.info("상세 예약 페이지");
		
		
		return "detailReserve";
	}
	
	
}
