package com.project.jobnom.Hire.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Interestedrcruitment {
	private int hire_no;
	private int rec_no;
	private int mem_no;
	private int open_check;

	private String rec_title;
	private String ent_name;
	private String ent_logo;
	private String ent_no;
	private int rec_category;
}
