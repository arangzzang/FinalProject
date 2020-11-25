package com.project.jobnom.member.model.service;

import com.project.jobnom.member.model.vo.Member;

public interface MemberService {
	//로그인
	Member memberLogin(String memEmail);
	//회원가입입력
	int enrollMember(Member m);
}
