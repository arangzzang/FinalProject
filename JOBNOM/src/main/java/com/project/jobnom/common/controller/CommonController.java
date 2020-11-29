package com.project.jobnom.common.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping("/common/commonLogin")
	public ModelAndView commonLogin(@RequestParam Map login, ModelAndView mv) {
		System.out.println(login);
		Login who=service.commonLogin(login);
		String loc="";
		System.out.println("===============");
		System.out.println(login);
		//CharSequence = string을 상속받음
		if(pwEncoder.matches((String)login.get("password"), who.getMemPw())) {
			loc="redirect:/";
			mv.addObject("commonLogin");
			mv.setViewName(loc);
		}else {
			loc="common/msg";
			mv.addObject("msg","로그인실패");
			mv.addObject("loc","/");
			mv.setViewName(loc);
		}
		return mv;
	}
	
}
