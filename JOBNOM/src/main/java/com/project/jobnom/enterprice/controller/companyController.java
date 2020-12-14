package com.project.jobnom.enterprice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
