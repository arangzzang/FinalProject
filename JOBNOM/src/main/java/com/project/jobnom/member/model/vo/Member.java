package com.project.jobnom.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	
	private int memNo;
	private String memEmail;
	private String memPw;
	private String memManagerYn;
	private String memCheck;
	private String memMembership;
	private String memCategory1;
	private String memCategory2;
	private int type;// 3
}
