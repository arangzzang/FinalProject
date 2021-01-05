package com.project.jobnom.enterprise.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Mammoth {
	private int edu_no;
	private String edu_name;
	private String edu_major;
	private Date edu_term;
	private Date edu_termend;
	private String edu_contents;
	private String edu_attend;
	private int awa_no;
	private String awa_name;
	private Date awa_term;
	private int lic_no;
	private String lic_name;
	private Date lic_term;
	private Date car_term;
	private Date car_termend;
	private String car_name;
	private String car_dept;
	private String car_duty;
	private String car_rank;
	private String car_content;
	private int skill_no;
}
