package com.project.jobnom.enterprise.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Worker {
	private String resName;
	private String resPhone;
	private String resGender;
	private int resBirth;
	private int resCar; //경력
	private String resContent;
	private int resNo;
	private int memNo;
	private String memCheck;
	private String memEmail;
	private int cateNo2;
	private int type;
}
