package com.project.jobnom.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.service.AdminService;
import com.project.jobnom.admin.model.vo.Member;
import com.project.jobnom.enterprise.model.vo.ApplyAd;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("adminHome")
	public String adminHome() {
		return "/admin/adminHome";
	}

	@RequestMapping("/memMg")
	public ModelAndView memMg(ModelAndView mv) {

		List<Member> memList = service.memList();
		System.out.println(memList);
		mv.addObject("memList", memList);
		mv.setViewName("/admin/memMg");

		return mv;
	}

	@RequestMapping("/comMg")
	public ModelAndView comMg(ModelAndView mv) {

		List<Review> revList = service.revList();
		System.out.println(revList);
		mv.addObject("revList", revList);
		mv.setViewName("/admin/comMg");

		return mv;
	}

	@RequestMapping("/adMg")
	public ModelAndView adMg(ModelAndView mv) {
		List<ApplyAd> adList = service.adList();
		System.out.println(adList);
		mv.addObject("adList", adList);
		mv.setViewName("/admin/adMg");

		return mv;
	}
	@RequestMapping("/grant")
	public ModelAndView grant(ModelAndView mv, String memno) {
		memno = memno.trim();
		System.out.println(memno);
		
		int result = service.grant(memno);
		String msg = "";
		String loc = "/adminHome";
		
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("/common/msg");
		return mv;
	}
	@RequestMapping("/oust")
	public ModelAndView oust(ModelAndView mv, String memno) {
		memno = memno.trim();
		System.out.println(memno);
		
		int result = service.oust(memno);
		String msg = "";
		String loc = "/adminHom";
		
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("/common/msg");
		return mv;
	}
	
	@RequestMapping("/memDelete")
	public ModelAndView memDelete(ModelAndView mv, String memno) {
		memno = memno.trim();
		System.out.println(memno);
		
		int result = service.memDelete(memno);
		String msg = "";
		String loc = "/adminHom";
		
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("/common/msg");
		return mv;
	}
}
