package com.project.jobnom.enterprise.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Support;
import com.project.jobnom.enterprise.page.EnterprisePageBar;

@Controller
public class companyController {
	@Autowired
	EnterpriseService service;

	@RequestMapping("/enterprise/companyList.do")
	public String companyList() {
		
		return "enterprise/companyList";
	}

	@RequestMapping("/enterprise/com_info.do")
	public String companyInfo() {
		
		return "enterprise/com_info";
	}
	
	@RequestMapping("/enterprise/com_review.do")
	public String companyReview() {
		
		return "enterprise/com_review";
	}
	
	@RequestMapping("/enterprise/com_interview.do")
	public String companyInterview() {
		
		return "enterprise/com_interview";
	}
	
	@RequestMapping("/enterprise/com_job.do")
	public String companyJob() {
		
		return "enterprise/com_job";
	}
	@RequestMapping("/enterprise/applyAdEnd.do")
	public String applyAdEnd(ApplyAd ad, Model m) {
		if(ad.getRec_salary()==null) {
			ad.setRec_salary("회사내규에 따름");
		}
		System.out.println(ad);
		int result = service.insertApplyAd(ad);
		return "common/msg";
	}
	@RequestMapping("/com/mypage.do")
	public String comMypage() {
		return "/enterprise/ent_mypage/com_mypage";
	}
	@RequestMapping("/com/applyAd.do")
	public String applyAd() {
		return "/enterprise/ent_mypage/applyAd";
	}
	@RequestMapping("/com/ent_edit.do")
	public ModelAndView entEdit(HttpSession session, ModelAndView mv) {
		
		Login log = (Login)session.getAttribute("commonLogin");
		System.out.println("controller" + session.getAttribute("commonLogin"));
		System.out.println(log.getMemNo());
		Enterprise ent = (Enterprise)service.findOneEnterprise(log);
		System.out.println(ent);
		mv.addObject("enterprise", ent);
		mv.setViewName("/enterprise/ent_mypage/ent_edit");
		return mv;
	}
	//지원자 조회 or 페이징 처리
	@RequestMapping("/com/com_check.do")
	public ModelAndView comCheck(ModelAndView mv,@RequestParam(value="cPage",defaultValue="1") int cPage, 
			@RequestParam(value="numPerpage",defaultValue="5") int numPerpage)  {
		System.out.println("???");
		List<Support> s = service.selectSupport(cPage,numPerpage);
		int totalData=service.selectCount();
		mv.addObject("s",s);
		mv.addObject("pageBar",EnterprisePageBar.getPageBar(totalData,cPage,numPerpage,"com_check.do"));
		mv.addObject("totalData",totalData);
		mv.setViewName("/enterprise/ent_mypage/com_check");
		
		return mv;
	}

	
}
