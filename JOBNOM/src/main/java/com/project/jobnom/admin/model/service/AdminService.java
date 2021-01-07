package com.project.jobnom.admin.model.service;

import java.util.List;

import com.project.jobnom.admin.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.admin.model.vo.Member;

public interface AdminService {

	List<Member> memList(int cPage, int numPerpage);

	int grant(String memno);

	int oust(String memno);

	int memDelete(String memno);

	List<Review> revList(int cPage, int numPerpage);

	List<Recruitment> adList(int cPage, int numPerpage);

	int censor(int revno);

	int adDelete(String recno);

	int memNum();

	int revNum();

	int adNum();
}
