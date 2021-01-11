package com.project.jobnom.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.service.AdminService;
import com.project.jobnom.admin.model.vo.Member;
import com.project.jobnom.admin.model.vo.PageBarFactory;
import com.project.jobnom.admin.model.vo.Recruitment;
import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.enterprise.model.vo.Category2;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	@Autowired EnterpriseService eservice;
	
	@RequestMapping("adminHome")
	public String adminHome() {
		return "/admin/adminHome";
	}

	@RequestMapping("/memMg")
	public ModelAndView memMg(ModelAndView mv,
						@RequestParam(value="cPage", defaultValue="1") int cPage,
						@RequestParam(value="numPerpage", defaultValue="5") int numPerpage) {

		List<Member> memList = service.memList(cPage, numPerpage);
		System.out.println(memList);
		int totalData=service.memNum();
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, "/20PM_JOBNOM_Final/memMg"));
		mv.addObject("memList", memList);
		mv.setViewName("/admin/memMg");

		return mv;
	}

	@RequestMapping("/comMg")
	public ModelAndView comMg(ModelAndView mv,
						@RequestParam(value="cPage", defaultValue="1") int cPage,
						@RequestParam(value="numPerpage", defaultValue="5") int numPerpage) {
		List<Review> revList = service.revList(cPage, numPerpage);
		int totalData=service.revNum();
		System.out.println(revList);
		mv.addObject("revList", revList);
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, "/20PM_JOBNOM_Final/comMg"));
		mv.setViewName("/admin/comMg");

		return mv;
	}

	@RequestMapping("/adMg")
	public ModelAndView adMg(ModelAndView mv,
						@RequestParam(value="cPage", defaultValue="1") int cPage,
						@RequestParam(value="numPerpage", defaultValue="5") int numPerpage) {
		List<Category2> c2 = eservice.getC2();
		List<Recruitment> adList = service.adList(cPage, numPerpage);
		System.out.println(adList);
		int totalData=service.adNum();
		mv.addObject("c2", c2);
		mv.addObject("adList", adList);
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, "/20PM_JOBNOM_Final/adMg"));
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
	@RequestMapping("/censor")
	public ModelAndView censor(ModelAndView mv, String reviewno) {
		int revno = Integer.parseInt(reviewno.trim());
		System.out.println(revno);
		
		int result = service.censor(revno);
		String msg = "";
		String loc = "/adminHome";
		
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("/common/msg");
		return mv;
	}
	@RequestMapping("/adDelete")
	public ModelAndView adDelete(ModelAndView mv, String recno) {
		recno = recno.trim();
		System.out.println(recno);
		
		int result = service.adDelete(recno);
		String msg = "";
		String loc = "/adminHom";
		
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("/common/msg");
		return mv;
	}
}
