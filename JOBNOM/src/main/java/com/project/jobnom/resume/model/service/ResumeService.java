package com.project.jobnom.resume.model.service;

import java.util.List;

import com.project.jobnom.resume.model.vo.Skill;

public interface ResumeService {
	
	//업무 및 스킬 자도검색어
	List<Skill> mySkill(String skill);
}
