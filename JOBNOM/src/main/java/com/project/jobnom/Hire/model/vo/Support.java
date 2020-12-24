package com.project.jobnom.Hire.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Support {
	
	private int app_no;
	private int mem_no;
	private int rec_no;
	private Date support_daty;
	
	private String rec_title;
	private String ent_name;
	private String rec_contents;
	private Date support_day;

}
