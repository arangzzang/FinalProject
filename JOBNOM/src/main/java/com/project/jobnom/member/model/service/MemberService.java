package com.project.jobnom.member.model.service;

import com.project.jobnom.member.model.vo.Member;

public interface MemberService {
	
	//회원가입입력
	int enrollMember(Member m);
	//마이페이지
	Member mypageView(int memNo);
	//email변경
	int changeMemEmail(String memEmail);
}
