package com.project.jobnom.resume.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Resume {
	
	private int resNo;
	private String resName;
	private String resGender;
	private Date resBirth;
	private String resPhone;
	private String resContent;
	private String resOpenCheck;
	private int carNo;
	private int eduNo;
	private int awaNo;
	private int licNo;
	private int pofolNo;
	private int memNo;
}
