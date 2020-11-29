package com.project.jobnom.enterprice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.jobnom.enterprice.model.service.EnterpriceService;
import com.project.jobnom.enterprice.model.vo.Enterprice;

@Controller
public class EnterpriceController {

	@Autowired
	EnterpriceService service;
	
	
}
