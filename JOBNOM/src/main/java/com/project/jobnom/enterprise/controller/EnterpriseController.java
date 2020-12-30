package com.project.jobnom.enterprise.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.enterprise.model.vo.Enterprise;

@Controller
public class EnterpriseController {

	@Autowired
	EnterpriseService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;
	
	//기업 회원가입
	@RequestMapping("/enterprise/enrollEnterEnd")
	public ModelAndView enrollEnterEnd(Enterprise ent, ModelAndView mv,HttpSession session, 
			@RequestParam(value="Logo", required = false) CommonsMultipartFile Logo) {
		String oriPw=ent.getEntPw();
		ent.setEntPw(pwEncoder.encode(oriPw));
		System.out.println("=========들어온값===========");
		System.out.println(ent);
		Login log=new Login(null,0,ent.getEntEmail(),null);
		String oldName = Logo.getOriginalFilename();
		String ext = oldName.substring(oldName.lastIndexOf(".") + 1);
		String newName = ent.getEntName() + "_logo." + ext;
		ent.setEntLogo(newName);
		int result=service.enrollEnter(ent);
		System.out.println(result>0?"회원가입성공":"회원가입실패");
		ent=service.findEmailEnterprise(log);
		System.out.println(ent);//null
		
		System.out.println(ent.getEntNo());
		String path=session.getServletContext().getRealPath("/resources/enterprise/logo/"+ent.getEntNo());
		
		System.out.println(path);
		File dir = new File(path);
		if (!dir.exists())
			dir.mkdirs();
	    try {
	    	Logo.transferTo(new File(path + "/" + newName));
	    } catch (IOException e) {
	       e.printStackTrace();
	    }
		mv.addObject("ent",ent);
		mv.addObject("msg",result>0?"회원가입성공":"회원가입실패");
		
		String loc="redirect:/";
		mv.setViewName(loc);
		
		return mv;
	}
	
}









