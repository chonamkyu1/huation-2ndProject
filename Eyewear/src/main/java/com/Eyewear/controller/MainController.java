package com.Eyewear.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Eyewear.vo.MemberVO;

@Controller
public class MainController {
	
	
	
	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header() throws Exception {
		System.out.println("header");
		
		return "header";
	}
	
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer() throws Exception {
		System.out.println("footer");
		
		return "footer";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() throws Exception {
		
		return "main";
	}
	
	
	@RequestMapping(value = "/topic=frame", method = RequestMethod.GET)
	public String frame() throws Exception {
		
		System.out.println("토픽=프레임");
		
		return "frame";
	}
	
	@RequestMapping(value = "/topic=lens", method = RequestMethod.GET)
	public String lens() throws Exception {
		
		System.out.println("토픽=렌즈");
		
		return "lens";
	}
	
	@RequestMapping(value = "/topic=lookBook", method = RequestMethod.GET)
	public String lookBook() throws Exception {
		
		System.out.println("토픽=룩북");
		
		return "lookBook";
	}
	
	@RequestMapping(value = "/board/faq", method = RequestMethod.GET)
	public String faq() throws Exception {
		
		System.out.println("faq~");
			
		return "faq";
	}
	
	@RequestMapping(value = "/board/notice", method = RequestMethod.GET)
	public String notice() throws Exception {
		System.out.println("notice~");
		return "notice";
	}
	

	
	
}
