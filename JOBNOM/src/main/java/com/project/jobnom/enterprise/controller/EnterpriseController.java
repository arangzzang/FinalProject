package com.project.jobnom.enterprise.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.enterprise.model.vo.Enterprise;

@Controller
public class EnterpriseController {

	@Autowired
	EnterpriseService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;
	
	//기업 회원가입
	@RequestMapping("/enterprice/enrollEnterEnd")
	public ModelAndView enrollEnterEnd(Enterprise ent, ModelAndView mv) {
		System.out.println("========1번째 실행 ============");
		System.out.println(ent);
		String oriPw=ent.getEntPw();
		String loc="redirect:/";

		ent.setEntPw(pwEncoder.encode(oriPw));
		System.out.println("========2번째 실행 ============");
		int result=service.enrollEnter(ent);
		System.out.println(ent);
		mv.addObject("ent",ent);
		mv.addObject("msg",result>0?"회원가입성공":"회원가입실패");
		
		mv.setViewName(loc);
		
		return mv;
	}
	
}









