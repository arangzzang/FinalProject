package com.project.jobnom.admin.model.service;

import java.util.List;

import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.vo.Member;
import com.project.jobnom.enterprise.model.vo.ApplyAd;

public interface AdminService {

	List<Member> memList();

	int grant(String memno);

	int oust(String memno);
	
	int memDelete(String memno);
	
	List<Review> revList();
	
	List<ApplyAd> adList();
}
