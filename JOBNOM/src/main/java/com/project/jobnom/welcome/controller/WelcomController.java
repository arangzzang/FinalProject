package com.project.jobnom.welcome.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomController {

	@RequestMapping("/welcome/FAQ")
	public String welcomFAQView() {
		
		return "welcome/FAQ";
	}
}
