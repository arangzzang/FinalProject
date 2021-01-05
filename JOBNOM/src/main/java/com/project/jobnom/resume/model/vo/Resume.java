package com.project.jobnom.resume.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Resume {
	//이력서
	private int resNo;
	private String resName;
	private String resPhone;
	private String resGender;
	private int resBirth;
	private int resCar;
	private String resContent;
	private String resOpenCheck;
	private int memNo;
}
