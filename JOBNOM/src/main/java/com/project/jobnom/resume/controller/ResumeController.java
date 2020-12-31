package com.project.jobnom.resume.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.jobnom.resume.model.service.ResumeService;
import com.project.jobnom.resume.model.vo.Skill;

@Controller
public class ResumeController {

	@Autowired
	private ResumeService service;
	
	//업무 및 스킬 자동검색어
	@RequestMapping("/resume/mySkill")
	@ResponseBody
	public List<Skill> mySkill (String skill, Model m) {
		List<Skill> sk=service.mySkill(skill);
		m.addAttribute("skill",sk);
		return sk;
	}
}
