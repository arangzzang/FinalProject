package com.project.jobnom.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.member.model.service.MemberService;
import com.project.jobnom.member.model.vo.Member;

@Controller
@SessionAttributes("memberLogin")
public class MemberController {

	@Autowired
	private MemberService service;
//	@Autowired
//	BCryptPasswordEncoder pwEncoder;
	//로그인
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
		return "redirect:/";
	}
	//로그아웃
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
	//회원가입 페이지전환
	@RequestMapping("/member/enrollMember")
	public String enrollMember() {
		return "common/enroll";
	}
	//회원가입
	@RequestMapping("/member/enrollMemberEnd")
	public ModelAndView enrollMemberEnd(Member m, ModelAndView mv) {
		
		String loc="redirect:/";
		int result = service.enrollMember(m);
		mv.addObject("mem",m);
		mv.addObject("msg",result>0?"회원가입성공":"회원가입실패");
		mv.setViewName(loc);
		return mv;
	}
	
	
	@RequestMapping("/member/enrollEnterEnd")
	public void enrollEnterEnd() {
		
	}
}
