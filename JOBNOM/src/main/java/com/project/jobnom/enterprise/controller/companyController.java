package com.project.jobnom.enterprise.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.member.model.vo.Member;

@Controller
public class companyController {

	@RequestMapping("/enterprice/companyList.do")
	public String companyList() {
		
		return "enterprice/companyList";
	}

	@RequestMapping("/enterprice/com_info.do")
	public String companyInfo() {
		
		return "enterprice/com_info";
	}
	
	@RequestMapping("/enterprice/com_review.do")
	public String companyReview() {
		
		return "enterprice/com_review";
	}
	
	@RequestMapping("/enterprice/com_interview.do")
	public String companyInterview() {
		
		return "enterprice/com_interview";
	}
	
	@RequestMapping("/enterprice/com_job.do")
	public String companyJob() {
		
		return "enterprice/com_job";
	}
	@RequestMapping("/enterprise/applyAdEnd.do")
	public String applyAdEnd(ApplyAd ad, Model m) {
		System.out.println(ad);
		int result = service.insertApplyAd(ad);
		return "common/msg";
	}
}
