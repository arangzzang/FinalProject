package com.project.jobnom.common.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
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
		//아이디 기억하기
		if(login.get("remember").equals("on")) {
			System.out.println("=============쿠키값==================");
			System.out.println(login.get("email"));
			System.out.println("==============================");
			Cookie c = new Cookie("loginCheck",who.getMemEmail());
			c.setMaxAge(60*60*24*7);
			c.setPath("/jobnom");
			System.out.println("=============쿠키값==================");
			System.out.println(c);
			System.out.println("==============================");
			response.addCookie(c);
		}else {
			Cookie c = new Cookie("loginCheck","");
			c.setMaxAge(0);
			response.addCookie(c);
		}
		//로그인 시도 시 암호화된 비밀번호 분기처리
		if(pwEncoder.matches((String)login.get("password"), who.getMemPw())) {
			loc="redirect:/";
			mv.addObject("commonLogin", who);
			mv.setViewName(loc);
		}else {
			loc="common/msg";
			mv.addObject("msg","로그인실패");
			mv.addObject("loc","/");
			mv.setViewName(loc);
		}
		return mv;
	}
	//email중복체크
	@RequestMapping("/checkDuplicate/enrollCommon")
	@ResponseBody
	public List<Login> checkDuplicateEmail(String dupli) throws IOException{
		
		System.out.println(dupli);
		List<Login> list=service.checkDuplicateEmail(dupli);
		System.out.println(list);
		
		return list;
	}
	
}



