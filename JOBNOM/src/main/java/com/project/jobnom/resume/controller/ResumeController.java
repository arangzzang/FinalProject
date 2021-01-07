package com.project.jobnom.resume.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.resume.model.service.ResumeService;
import com.project.jobnom.resume.model.vo.Resume;
import com.project.jobnom.resume.model.vo.Skill;

@Controller
public class ResumeController {

	@Autowired
	private ResumeService service;
	
	//업무 및 스킬 자동검색어
	@RequestMapping("/resume/mySkill")
	@ResponseBody
	public List<Skill> mySkill (String skill, Model m) {
//		List<Skill> sk=null;
		List<Skill> sk=service.mySkill(skill);
		System.out.println(sk);
		m.addAttribute("skill",sk);
		return sk;
	}
	//이력서
	@RequestMapping("/resume/insertResume")
	public ModelAndView insertResume(Resume res, int category2,String skill, ModelAndView mv,HttpSession session) {
		int result=0;
		Map resMap = new HashMap();
		Resume selRes=service.selectResume(res.getMemNo());
		System.out.println("categortNo2 : "+category2);
		//selectResume존재 여부 메소드 실행 
		if(selRes==null) {
			//없으면
			result=service.insertResume(res);
			
			resMap.put("res", res);
			resMap.put("cate2", category2);
			if(result > 0) service.categoryUpdate(resMap);
			
			mv.addObject("msg",result>0?"이력서가 저장되었어요~":"이력서가 저장되지 않았습니다. 다시 확인해 주세요.");
			mv.addObject("loc","/member/myPage?memNo="+res.getMemNo());
			session.setAttribute("insertFlag","true");
			mv.setViewName("common/msg");
		}else {
			//있으면
			result=service.updateResume(res);
			
			resMap.put("res", res);
			resMap.put("cate2", category2);
			System.out.println(resMap);
			if(result > 0) service.categoryUpdate(resMap);
			
			mv.addObject("msg",result>0?"이력서가 저장되었어요~":"이력서가 저장되지 않았습니다. 다시 확인해 주세요.");
			mv.addObject("loc","/member/myPage?memNo="+res.getMemNo());
			session.setAttribute("updateFlag","true");
			mv.setViewName("common/msg");
		}
		
		return mv;
	}///resume/insertResume
	
	
	
	
	
	
}
