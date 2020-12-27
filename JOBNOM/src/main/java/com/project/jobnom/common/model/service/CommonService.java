package com.project.jobnom.common.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.common.model.vo.Login;

public interface CommonService {
	//로그인
	Login commonLogin(Map login);
	//이메일 중복체크
	List<Login> checkDuplicateEmail(String memEmail);
	//회원탈퇴
	int userSecession(int memNo);
}
