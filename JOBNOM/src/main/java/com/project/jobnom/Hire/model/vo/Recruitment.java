package com.project.jobnom.Hire.model.vo;


import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Recruitment {
	
	private int rec_no;    //공고번호
	private int ent_no;    //기업번호
	private String rec_title;    //공고제목
	private String rec_content;    //공고내용
	private List rec_file1;    //공고파일
	private String rec_file2;    //공고파일
	private Date rec_startdate;    //공고등록일자
	private Date rec_enddate;    //공고마감일자
	private String rec_salary;    //공고연봉
	private String rec_info;    //공고정보
	private String rec_prefer;    //공고우대사항
	private String rec_welfare;    //공고복지
	private String rec_qualification;    //공고자굑요건
	private String rec_pepole;    //공고모집인원
	private String rec_career;    //공고경력
	private String rec_order;    //면접절차
	private String rec_type;    //고용형태
	private String rec_category;
	private String rec_other;
	
	//여기서 부터 다른테이블에 있는 내용 받아올수있게 생성해주는곳
	private String ent_name;    //기업이름
	private String ent_logo;			//로고
	private String rep_name;			//담당자이름
	private String rep_phone;		//담당자 번호
	private int mem_no;
	private int hire_no;
	private String res_name;
	private String mem_check;
	private String mem_membership;
	private String open_check;
	private String jobs2;
	private String ent_email;
	private Double avg;

}
