package com.project.jobnom.resume.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.jobnom.resume.model.dao.ResumeDao;
import com.project.jobnom.resume.model.vo.Resume;
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
	//이력서
	@Override
	public int insertResume(Resume res) {
		return dao.insertResume(res,session);
	}
	//이력서 검색
	@Override
	public Resume selectResume(int memNo) {
		return dao.selectResume(memNo, session);
	}
	@Override
	public int updateResume(Resume res) {
		return dao.updateResume(res,session);
	}
	@Override
	public int categoryUpdate(Map resMap) {
		return dao.categoryUpdate(resMap,session);
	}
	
	
	
	
}
