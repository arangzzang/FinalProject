package com.project.jobnom.enterprice.model.service;

import com.project.jobnom.enterprice.model.vo.ApplyAd;
import com.project.jobnom.enterprice.model.vo.Enterprice;
import com.project.jobnom.member.model.vo.Member;

public interface EnterpriseService {
	
	//기업 회원가입입력
	int enrollEnter(Enterprice ent);
	int insertApplyAd(Member mem, ApplyAd ad);
}
