package com.project.jobnom.resume.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.resume.model.dao.ResumeDao;
import com.project.jobnom.resume.model.vo.Skill;

@Service
public class ResumeServiceImpl implements ResumeService {

	@Autowired
	private ResumeDao dao;
	@Autowired
	private SqlSession session;

	//업무 및 스킬 자동검색어
	@Override
	public List<Skill> mySkill(String skill) {
		return dao.mySkill(skill,session);
	}
	
	
}
