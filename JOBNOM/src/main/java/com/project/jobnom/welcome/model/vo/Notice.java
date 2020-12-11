package com.project.jobnom.welcome.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Notice {
	private String noticeNo;
	private String noticeTitle;
	private String noticeContents;
	private Date noticeWriteDate;
//	private int adminNo;

}
