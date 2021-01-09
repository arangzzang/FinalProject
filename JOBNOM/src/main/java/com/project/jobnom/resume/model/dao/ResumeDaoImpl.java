package com.project.jobnom.resume.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.resume.model.vo.Education;
import com.project.jobnom.resume.model.vo.Resume;
import com.project.jobnom.resume.model.vo.Skill;

@Repository
public class ResumeDaoImpl implements ResumeDao {

	@Override
	public List<Skill> mySkill(String skill, SqlSession session) {
		return session.selectList("resume.mySkill", skill);
	}

	@Override
	public int insertResume(Resume res, SqlSession session) {
		return session.insert("resume.insertResume", res);
	}

	@Override
	public Resume selectResume(int memNo, SqlSession session) {
		return session.selectOne("resume.selectResume",memNo);
	}

	@Override
	public int updateResume(Resume res, SqlSession session) {
		return session.update("resume.updateResume", res);
	}

	@Override
	public int categoryUpdate(Map resMap, SqlSession session) {
		return session.update("resume.categoryUpdate", resMap);
	}

	@Override
	public int insertEducation(Education edu, SqlSession session) {
		return session.insert("resume.insertEducation",edu);
	}

	@Override
	public int insertMySkill(int resNo, SqlSession session) {
		return session.insert("resume.insertMySkill", resNo);
	}
	
	
	
	
}
