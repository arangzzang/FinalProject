package com.project.jobnom.enterprise.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Enterprise;

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
		String[] jtypes = {"은행관련", "세무/법무","경리/출납/수납", "증거 투자 분석사", 
				"보험계리사/손해사정인", "웹계발", "시스템 엔지니어", "웹퍼블리셔", "기획",
				"네트워크/보안/운영", "데이터분석", "교육기획", "전문강사", "초중고/특수 교사", 
				"대학교수", "교직원", "입시/보습/학원강사", "마켓팅", "브랜드 마켓팅", 
				"시장조사/분석", "상품개발/기획/MD", "온라인 마켓팅", "의사", "한의사", "치과의사", 
				"약사/한약사", "간호사", "간호조무사", "물리치료사", "수의사", "고객지원/CS", 
				"호텔/숙박 관련", "가이드", "외식업/식음료", "기타 서비스직", "경영"};
		for(String l : jtypes) {
			System.out.println(l);
		}
		Login log = (Login)session.getAttribute("commonLogin");
		System.out.println("controller" + session.getAttribute("commonLogin"));
		System.out.println(log.getMemNo());
		Enterprise ent = (Enterprise)service.findOneEnterprise(log);
		String jname = jtypes[ent.getType()-1];
		System.out.println(ent);
		mv.addObject("enterprise", ent);
		mv.addObject("jname", jname);
		mv.setViewName("/enterprise/ent_mypage/ent_edit");
		return mv;
	}
}
