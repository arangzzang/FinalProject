package com.project.jobnom.Hire.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Recruitment {
	
	private int rec_no;
	private int ent_no;
	private String rec_title;
	private String rec_content;
	private String rec_file1;
	private String rec_file2;
	private Date rec_startdate;
	private Date rec_enddate;
	private String rec_salary;
	private String rec_info;
	private String rec_prefer;
	private String rec_welfare;
	private String rec_qualification;
	private String rec_pepole;
	private String rec_type;

}
