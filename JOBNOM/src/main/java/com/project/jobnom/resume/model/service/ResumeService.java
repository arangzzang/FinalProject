package com.project.jobnom.resume.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.resume.model.vo.Education;
import com.project.jobnom.resume.model.vo.Resume;
import com.project.jobnom.resume.model.vo.Skill;

public interface ResumeService {
	
	//업무 및 스킬 자도검색어
	List<Skill> mySkill(String skill);
	//이력서 검색
	Resume selectResume(int memNo);
	//이력서
	int insertResume(Resume res);
	int insertEducation(Education edu);
	int insertMySkill(Map resMap);
	//이력서 수정
	int updateResume(Resume res);
	//카테고리수정
	int categoryUpdate(Map resMap);
	
}
