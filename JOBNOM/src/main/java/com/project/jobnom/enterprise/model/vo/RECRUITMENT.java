package com.project.jobnom.enterprise.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RECRUITMENT {
	
	private int rec_no;
	private int ent_no;
	private String rec_title;
	private Date rec_startdate;
	private Date rec_enddate;
	
}
