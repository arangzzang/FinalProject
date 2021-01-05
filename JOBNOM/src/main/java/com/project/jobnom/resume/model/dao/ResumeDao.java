package com.project.jobnom.resume.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.resume.model.vo.Skill;

public interface ResumeDao {

	List<Skill> mySkill(String skill, SqlSession session);
}
