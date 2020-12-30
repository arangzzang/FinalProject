package com.project.jobnom.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResumeController {

//	@Autowired
//	private ResumeService service;
	
	@RequestMapping("/resume/insertResume")
	public String insertResume () {
		
		return "";
	}
}
