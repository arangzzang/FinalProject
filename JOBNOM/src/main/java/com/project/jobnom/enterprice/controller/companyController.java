package com.project.jobnom.enterprice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class companyController {

	@RequestMapping("/enterprice/companyList.do")
	public String companyList() {
		
		return "enterprice/companyList";
	}
}