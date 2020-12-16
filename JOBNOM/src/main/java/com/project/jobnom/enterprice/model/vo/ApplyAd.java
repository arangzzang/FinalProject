package com.project.jobnom.enterprice.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ApplyAd {
	private int ent_no;
	private String rec_title;
	private String rec_contents;
	private String rec_file1;
	private String rec_file2;
	private Date rec_startdate;
	private Date rec_enddate;
	private int rec_salary;
	private String rec_info;
	private String rec_prefer;
	private String rec_welfare;
	private String rec_qualification;
	private int rec_people;
	private int rec_career;
	private String rec_order;
	private String rec_type;
	private String rec_other;
	private int rec_category;
}
