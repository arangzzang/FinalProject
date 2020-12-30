package com.project.jobnom.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Resume {
	private int resNo;
	private String resName;
	private String resPhone;
	private String resGender;
	private int resBirth;
	private int resCar;
	private String resContent;
	private String resOpenCheck;
	private String memNo;

}
