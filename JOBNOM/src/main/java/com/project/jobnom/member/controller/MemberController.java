package com.project.jobnom.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.project.jobnom.member.model.service.MemberService;
import com.project.jobnom.member.model.vo.Member;

@Controller
@SessionAttributes("memberLogin")
public class MemberController {

	@Autowired
	private MemberService service;
//	@Autowired
//	BCryptPasswordEncoder pwEncoder;
	
	@RequestMapping("/member/memberLogin")
	public String memberLogin (String memEmail, String memPw, Model m) {
		
		Member mem = service.memberLogin(memEmail);
		System.out.println(mem);
		String loc="";
		
		if(mem.getMemPw().equals(memPw)) {
			m.addAttribute("memberLogin",mem);
		}else {
			System.out.println("로그인실패");
		}
		
//		if(pwEncoder.matches(memPw,mem.getMemPw())) {
//			m.addAttribute("memberLogin",mem);
//			loc="redirect:/";
//		}else {
//			m.addAttribute("msg",mem);
//			m.addAttribute("loc","/");
//			loc="common/msg";
//		}
		return "redirect:/";
	}
	@RequestMapping("/member/logout")
	public String logout(HttpSession session, SessionStatus ss) {
		
		if(!ss.isComplete()) {
			ss.setComplete();
		}
		if(session != null) {
			session.invalidate();
		}
		return "redirect:/";
	}
	
}
