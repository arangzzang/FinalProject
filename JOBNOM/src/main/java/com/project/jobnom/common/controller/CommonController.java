package com.project.jobnom.common.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.model.service.CommonService;
import com.project.jobnom.common.model.vo.Login;

@Controller
@SessionAttributes("commonLogin")
public class CommonController {

	@Autowired
	CommonService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;
	//로그인
	@RequestMapping("/common/commonLogin")
	public ModelAndView commonLogin(@RequestParam Map login, ModelAndView mv, HttpServletResponse response) {
		Login who=service.commonLogin(login);
		String loc="";
		System.out.println(who);
		if(who!=null) {
			//아이디 기억하기
			if(login.get("remember") != null) {//login.get("remember").equals("on")는 무조건적인 true이기 때문에 checkbox가 check되있지 않으면 nullpoint에러 발생
				Cookie c = new Cookie("loginCheck",who.getMemEmail());
				c.setMaxAge(60*60*24*7);
				c.setPath("/jobnom");
				response.addCookie(c);
				System.out.println("true일 때");
				System.out.println(c);
			}else {
				Cookie c = new Cookie("loginCheck","");
				c.setMaxAge(0);
				response.addCookie(c);
				System.out.println("false일 때");
				System.out.println(c);
			}
			//로그인 시도 시 암호화된 비밀번호 분기처리
			if(pwEncoder.matches((String)login.get("password"), who.getMemPw())) {
				loc="redirect:/";
				mv.addObject("commonLogin", who);
				mv.setViewName(loc);
			}else {
				loc="common/msg";
				mv.addObject("msg","비밀번호가 맞지않습니다.");
				mv.addObject("loc","/");
				mv.setViewName(loc);
			}
		}else {
			loc="common/msg";
			mv.addObject("msg","이메일이 일치하지 않습니다.");
			mv.addObject("loc","/");
			mv.setViewName(loc);
		}
		return mv;
	}
	//로그아웃
	@RequestMapping("/common/logout")
	public String logout(HttpSession session, SessionStatus ss) {
		
		if(!ss.isComplete()) {
			ss.setComplete();
		}
		if(session != null) {
			session.invalidate();
		}
		return "redirect:/";
	}
	//email중복체크
	@RequestMapping("/checkDuplicate/enrollCommon")
	@ResponseBody
	public ModelAndView checkDuplicateEmail(String dupli, ModelAndView mv) throws IOException{
		
		System.out.println(dupli);
		List<Login> list=service.checkDuplicateEmail(dupli);
		String str="";
		
		if(list!=null) {
			str="사용 할 수 있는 email입니다.";
		}else {
			str="사용 할 수 없는 email입니다.";
		}
		System.out.println(list);
		mv.addObject("str",str);
		return mv;
	}
//	@RequestMapping("/checkDuplicate/enrollCommon")
//	@ResponseBody
//	public List<Login> checkDuplicateEmail(String dupli) throws IOException{
//		
//		System.out.println(dupli);
//		List<Login> list=service.checkDuplicateEmail(dupli);
//		System.out.println(list);
//		
//		return list;
//	}
	
	
}



