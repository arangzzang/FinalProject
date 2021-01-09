package com.project.jobnom.openapi.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class openApiVo {
	
	private String seq; // 기업 번호
	private String wkplNm; // 기업 명 
	private String wkplRoadNmDtlAddr; // 도로명 주소
	private String crrmmNtcAmt; // 당월 고지금액
	private String jnngpCnt; //가입자수
	private String adptDt; // 사업장 등록일
}
