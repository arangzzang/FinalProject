package com.project.jobnom.resume.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.jobnom.resume.model.vo.Skill;

@Repository
public class ResumeDaoImpl implements ResumeDao {

	@Override
	public List<Skill> mySkill(String skill, SqlSession session) {
		return session.selectList("resume.mySkill", skill);
	}

}
