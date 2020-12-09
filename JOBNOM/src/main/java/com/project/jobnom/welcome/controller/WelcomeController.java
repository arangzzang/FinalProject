package com.project.jobnom.welcome.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.welcome.model.service.WelcomeService;
import com.project.jobnom.welcome.model.vo.FAQ;

@Controller
public class WelcomeController {

	@Autowired
	WelcomeService service;
	//FAQ목록
	@RequestMapping("/welcome/FAQ")
	public ModelAndView welcomFAQView(ModelAndView mv) {
		
		List<FAQ> list = service.welcomFAQView();
		String uri="welcome/FAQ";
		System.out.println(list);
		mv.addObject("fList",list);
		mv.setViewName(uri);
		
		return  mv;
	}
	//FAQ글쓰기 화면
	@RequestMapping("/welcome/writeFaq")
	public String writeFaq() {
		
		return "welcome/writeFaq";
	}
	//FAQ입력값받고 목록화면 돌아가기
	@RequestMapping("/welcome/writeFaqEnd")
	public ModelAndView writeFaqEnd(ModelAndView mv) {
		
		return mv;
	}
}
