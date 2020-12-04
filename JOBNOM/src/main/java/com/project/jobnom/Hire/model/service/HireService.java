package com.project.jobnom.Hire.model.service;

import java.util.List;
import java.util.Map;

import com.project.jobnom.Hire.model.vo.Recruitment;

public interface HireService {

	int insertReview(Map paramMap);
	
	List<Recruitment> HireHomeRecruitmentList(int cPage, int numPerpage);

	int selectCount();





}
