package com.Eyewear.controller;

import java.util.Random;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Eyewear.service.MemberService;
import com.Eyewear.vo.MemberVO;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private JavaMailSender mailSender;
	
//	@Resource(name="pwEncoder")
	
	
	
	// 로그인 페이지
	
	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public String loginGET() throws Exception {
		logger.info("로그인 페이지 진입"); 
		return "login";
	}
	
	
	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
//	public String login(MemberVO memberVO, Model model, HttpSession session) throws Exception {
	public String loginPOST(HttpServletRequest request, MemberVO memberVO, RedirectAttributes rttr) throws Exception {
//		System.out.println("postmapping");
//		System.out.println("전달된 데이터 : " + memberVO);
	
		HttpSession session = request.getSession();
		MemberVO lvo = memberService.login(memberVO);
		
		if (lvo == null) {				// 일치하지 않는 아이디, 비밀번호 입력했을 경우
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/user/login";
		}
		
		session.setAttribute("member", lvo);   // 아이디, 비밀번호 일치하는 경우 (로그인 성공)!!, 세션 헤더에 저장
		
		System.out.println("member: " + lvo);
		
		return "redirect:/main";
		
		
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
	
	// 메인페이지 로그아웃
	@RequestMapping(value="/user/logout", method = RequestMethod.GET)
	public String logoutMainGET(HttpServletRequest request) throws Exception {
		
		logger.info("로그아웃 메서드 진입");
		
		HttpSession session = request.getSession();  
		
		session.invalidate(); // 기존 세션 제거
		
		return "redirect:/main";
	}
	
	// 아이디 찾기
	@RequestMapping(value = "/user/find_id", method = RequestMethod.GET)
	public String findIdGET() throws Exception {
		logger.info("아이디찾기 페이지 GET");
		
		return "findId";
	}
	
	@RequestMapping(value = "/user/find_id", method = RequestMethod.POST)
	public String findIdPOST(MemberVO memberVO) throws Exception {
		logger.info("아이디찾기 페이지 POST");
		
		MemberVO fvo = memberService.findId(memberVO);
		System.out.println("fvo : " + fvo);
		
		
		logger.info("findId service 성공");
		
		

		return "afterFindId";
	}
	
	// 비밀번호 찾기
	@RequestMapping(value = "/user/find_pw", method = RequestMethod.GET)
	public String findPwGET() throws Exception {
		logger.info("비밀번호찾기 페이지 GET");
		
		return "findPw";
	}
	
	@RequestMapping(value = "/user/find_pw", method = RequestMethod.POST)
	public String findPwPOST(MemberVO memberVO) throws Exception {
		logger.info("비밀번호찾기 페이지 POST");
		
		int result = memberService.findPw(memberVO);
		logger.info("result : " + result);
		logger.info("findPw service 성공");
		
		return "afterFindPw";
	}
	
	
	@RequestMapping(value = "user/afterFind_id", method = RequestMethod.GET)
	public String afterFIndId() throws Exception {
		System.out.println("요기");
		
		
		return "afterFindId";
	}
	
	@RequestMapping(value = "user/afterFind_pw", method = RequestMethod.GET)
	public String afterFIndPw() throws Exception {
		System.out.println("요기");
		
		
		return "afterFindPw";
	}
	
	// 마이페이지
	
	@RequestMapping(value = "user/edit", method = RequestMethod.GET)
	public String myPageGET(HttpServletRequest request) throws Exception {
		logger.info("마이페이지 GET");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("member")==null) {
			return "redirect:/main";
		}
		
		
		
		return "mypage";
		
		
	}
	
	
	@RequestMapping(value = "user/edit", method = RequestMethod.POST)
	public String myPagePOST(HttpServletRequest request, MemberVO memberVO, RedirectAttributes rttr) throws Exception {
		logger.info("마이페이지 POST");
		
		
//		`HttpSession session = request.getSession();
//		session.setAttribute("member", mvo);
//		MemberVO mvo = memberService.myPage(memberVO);
//		System.out.println("member " + mvo);
		
		return "mypage";
	}
	
	// 마이페이지 제작현황 
	@RequestMapping(value = "user/status", method = RequestMethod.GET)
	public String myPageStatusGET() throws Exception {
		logger.info("마이페이지 제작현황 조회");
		
		
		return "status";
	}
	
	// 마이페이지 예약현황 
	@RequestMapping(value = "reserve/list", method = RequestMethod.GET)
	public String myPageReserveGET() throws Exception {
		logger.info("마이페이지 예약관리");
		
		
		return "myReserve";
	}
	
	// 마이페이지 나의 구매후기 
		@RequestMapping(value = "user/review", method = RequestMethod.GET)
		public String myPageReviewGET() throws Exception {
			logger.info("마이페이지 나의 구매후기");
			
			
			return "review";
		}
	
	
	// 회원가입
	@RequestMapping(value = "/user/join", method = RequestMethod.GET)
	public String joinGET() throws Exception {
		logger.info("회원가입 페이지 joinGet");
		
		return "join";
	}
	
	@RequestMapping(value = "/user/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO memberVO) throws Exception {
//		logger.info("회원가입 페이지 joinPost");
//		memberService.memberJoin(memberVO);   // 비밀번호 인코딩하기 전
//		logger.info("join service 성공");	
		
		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호
		
		rawPw =  memberVO.getMpassword(); // 비밀번호 데이터 얻음
//		encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
		memberVO.setMpassword(encodePw); // 인코딩된 비밀번호 다시 객체 저장
		
		// 회원가입 쿼리 실행
		memberService.memberJoin(memberVO);
		
		
		
		return "redirect:/main";
	}
	
	
	@RequestMapping(value = "/user/memberIdChk", method = RequestMethod.POST)
	@ResponseBody // <- 해주지 않으면 다시 join.jsp로 메서드 결과가 반환되지 않는다.
	public String memberIdChkPost(String mid) throws Exception {
//		logger.info("memberIdChk");

		int result = memberService.idCheck(mid);
//		logger.info("결과값 : " + result);

		if(result != 0) {
			return "fail";  // 중복아이디 존재
		} else {
			return "success";  // 중복아이디 없음
		}
		
	}
	
	
	@RequestMapping(value = "/user/mailCheck", method = RequestMethod.GET)
	@ResponseBody // 다시 jsp로 데이터를 전송하기 위해서는 꼭 필요
	public String mailCheckGET(String memail) throws Exception {
		
		// 뷰(view)로부터 넘어온 데이터 확인
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + memail);
		
		// 인증번호(난수) 생성
		Random random = new Random();
		
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("인증번호: " + checkNum);
		
		//이메일 보니기
		String setFrom = "wh15312@naver.com";   //disptcher.servlet 아이디와 동일해야함
		String toMail = memail;  // 수신 받을 이메일
		String title = "회원가입 인증 이메일 입니다."; 
		String content = 
				"홈페이지를 방문해주셔서 감사합니다." + 
				"<br><br>" + 
				"인증 번호는 " + checkNum + "입니다." +
				"<br>" +
				"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
		
		String num = Integer.toString(checkNum);
		

		return num;
	}
	
	
	
}
