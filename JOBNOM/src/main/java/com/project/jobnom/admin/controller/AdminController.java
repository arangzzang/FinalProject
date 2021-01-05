package com.project.jobnom.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@RequestMapping("adminHome")
	public String adminHome() {
		return "/admin/adminHome";
	}

	@RequestMapping("/memMg")
	public ModelAndView memMg(ModelAndView mv) {

		mv.setViewName("/admin/memMg");

		return mv;
	}

	@RequestMapping("/comMg")
	public ModelAndView comMg(ModelAndView mv) {

		mv.setViewName("/admin/comMg");

		return mv;
	}

	@RequestMapping("/adMg")
	public ModelAndView adMg(ModelAndView mv) {

		mv.setViewName("/admin/adMg");

		return mv;
	}
}
