package com.project.jobnom.resume.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.resume.model.vo.Education;
import com.project.jobnom.resume.model.vo.Resume;
import com.project.jobnom.resume.model.vo.Skill;

public interface ResumeDao {
	
	List<Skill> mySkill(String skill, SqlSession session);
	int insertResume(Resume res, SqlSession session);
	Resume selectResume(int memNo, SqlSession session);
	int updateResume(Resume res, SqlSession session);
	int insertEducation(Education edu, SqlSession session);
	int categoryUpdate(Map resMap, SqlSession session);
}
