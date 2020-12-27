package com.project.jobnom.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	
	private int memNo;				//회원번호
	private String memEmail;		//회원이메일
	private String memPw;			//회원비번
	private String memManagerYn;	//관리자유무
	private String memCheck;		//구직,재직,퇴사유무
	private String memMembership;	//맴버십가입유무
	private int type;				// 관리자,기업,회원 구분 일반회원:3
	private int mCateNo2;			//2차직업군FK
	private String rec_title;
	private String res_name;
	private Date rec_enddate;
}
