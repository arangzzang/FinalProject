package com.project.jobnom.enterprise.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Enterprise {

	private int entNo;				//기업번호 PK
	private String entEmail;		//기업 이메일(id)
	private String entPw;			//기업비밀번호
	private String entName;			//기업 이름
	private String entBusinessNo;	//사업자번호
	private String entLogo;			//로고
	private String entCategory1;	//1차산업군
	private String entCategory2;	//2차 직무
	private String repName;			//담당자이름
	private String repPhone;		//담당자 번호
	private int type;// 2
	private String entSite;			//기업이메일
	private String entMembership;	//맴버십
}
