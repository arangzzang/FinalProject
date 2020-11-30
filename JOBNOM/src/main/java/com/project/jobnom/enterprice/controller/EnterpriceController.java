package com.project.jobnom.enterprice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.enterprice.model.service.EnterpriceService;
import com.project.jobnom.enterprice.model.vo.Enterprice;

@Controller
@SessionAttributes("entpriceLogin")
public class EnterpriceController {

	@Autowired
	EnterpriceService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;
	
	//기업 회원가입
	@RequestMapping("/enterprice/enrollEnterEnd")
	public ModelAndView enrollEnterEnd(Enterprice ent, ModelAndView mv) {
		
		String oriPw=ent.getEntPw();
		String loc="redirect:/";
		
		ent.setEntPw(pwEncoder.encode(oriPw));
		int result=service.enrollEnter(ent);
		
		mv.addObject("ent",ent);
		mv.addObject("msg",result>0?"회원가입성공":"회원가입실패");
		
		mv.setViewName(loc);
		
		return mv;
	}
	
}









