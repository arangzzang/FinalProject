package com.project.jobnom.enterprise.model.service;

import java.util.List;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Support;

public interface EnterpriseService {
	
	//기업 회원가입입력
	int enrollEnter(Enterprise ent);
	int insertApplyAd(ApplyAd ad);
	Enterprise findOneEnterprise(Login log);

	List<Support> selectSupport(int cPage, int numPerpage);
	int selectCount();

	int updateEnterprise(Enterprise ent);
	int entMembership(Login log);
	int insertBanner(Banner ban);
}
