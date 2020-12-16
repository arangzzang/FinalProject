package com.project.jobnom.enterprice.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.project.jobnom.enterprice.model.vo.ApplyAd;
import com.project.jobnom.enterprice.model.vo.Enterprice;
import com.project.jobnom.member.model.vo.Member;

public interface EnterpriceDao {

	int enrollEnter(Enterprice ent, SqlSession session);
	int insertApplyAd(Member mem, ApplyAd ad, SqlSession session);
}
