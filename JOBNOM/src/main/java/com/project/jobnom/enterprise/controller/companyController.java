package com.project.jobnom.enterprise.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Review;
import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Category2;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Support;
import com.project.jobnom.enterprise.page.EnterprisePageBar;
import com.project.jobnom.resume.model.vo.Resume;


@Controller
public class companyController {
	@Autowired
	EnterpriseService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;

	//헤더 기업 버튼 클릭시 
	@RequestMapping("/enterprise/companyList.do")
	public ModelAndView companyList(ModelAndView mv) {
		
		mv.addObject("list",service.companyList());
		mv.addObject("list2",service.companyList2());
		mv.addObject("list3",service.companyList3());
		mv.addObject("list4",service.companyList4());
		mv.addObject("list5",service.companyList5());
		mv.addObject("list6",service.companyList6());
		mv.setViewName("enterprise/companyList");
		System.out.println(mv.addObject("list",service.companyList()));
		
		return mv;
	}
	
	//기업 메인 페이지

	@RequestMapping("/enterprise/com_info.do")
	public ModelAndView companyInfo(ModelAndView mv,int entNo) {
		System.out.println(entNo);
		
		mv.addObject("list",service.companyInfo(entNo));
		System.out.println(mv.addObject("list",service.companyInfo(entNo)));
		mv.setViewName("enterprise/com_info");
		return mv;
	}

	@RequestMapping("/enterprise/com_review.do")
	public ModelAndView companyReview(ModelAndView mv,int entNo,@RequestParam(value="cPage",defaultValue="1")
					int cPage,@RequestParam(value="numPerpage",defaultValue="5") int numPerpage) {
		List<Review> rev=service.selectReviewList(entNo,cPage,numPerpage);
		System.out.println("기업번호"+entNo);
		int totalData = service.selectReviewcount(entNo);
		
		mv.addObject("list",service.companyInfo(entNo));
		mv.addObject("totalData",totalData);
		mv.addObject("pageBar",EnterprisePageBar.getPageBar3(totalData,entNo,cPage,numPerpage,"com_review.do"));
		mv.addObject("rev",rev);
		mv.setViewName("enterprise/com_review");
		return mv;
	}

	@RequestMapping("/enterprise/com_interview.do")
	public ModelAndView companyInterview(ModelAndView mv,int entNo) {
		mv.addObject("list",service.companyInfo(entNo));
		mv.setViewName("enterprise/com_interview");
		return mv;
	}

	@RequestMapping("/enterprise/com_job.do")
	public ModelAndView companyJob(ModelAndView mv,@RequestParam(value="cPage",defaultValue="1")
	int cPage,@RequestParam(value="numPerpage",defaultValue="5") int numPerpage, int entNo, int recNo) {
		List<Category2> c2 = service.getC2();
		System.out.println();
		Map param = new HashedMap();
		param.put("entNo", entNo);
		param.put("recNo",recNo);
		
		System.out.println("번호: " + recNo );
		List<Recruitment> Rec= service.selectJoblist(param);
		int totalData = service.selectJobCount(entNo);
		 mv.addObject("totalData",totalData);
		 mv.addObject("pageBar",EnterprisePageBar.getPageBar4(totalData, cPage, numPerpage, entNo, "com_job.do"));
		 
		mv.addObject("c2",c2);
		mv.addObject("Rec",Rec);
		mv.addObject("list",service.companyInfo(entNo));
		mv.setViewName("enterprise/com_job");
		return mv;
	}

	@RequestMapping("/enterprise/applyAdEnd.do")
	public ModelAndView applyAdEnd(ApplyAd ad, Model m, ModelAndView mv) {
		if (ad.getRec_salary() == null) {
			ad.setRec_salary("회사내규에 따름");
		}
		System.out.println(ad);
		int result = service.insertApplyAd(ad);
		String msg = "";
		String loc = "";
		if (result > 0) {
			msg = "공고등록 성공";
			loc = "/com/mypage.do";
		} else {
			msg = "공고등록 실패";
			loc = "/enterprise/applyAd.do";
		}
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("/common/msg");
		return mv;
	}

	@RequestMapping("/com/mypage.do")
	public ModelAndView comMypage(ModelAndView mv,@RequestParam(value="cPage",defaultValue="1")
										int cPage,@RequestParam(value="numPerpage",defaultValue="5") int numPerpage, HttpSession session) {
		Login log = (Login) session.getAttribute("commonLogin");
		Enterprise ent = service.findOneEnterprise(log);
		session.setAttribute("Enterprise", ent);
		System.out.println("sdds"+ent.getEntNo());
		List<Recruitment> res = service.selectRecruitment(ent.getEntNo(),cPage,numPerpage); 
		int totalData = service.selectRecruitmentCount(ent);
		
		System.out.println(res);
		System.out.println("공고 총갯수 : " + totalData);
		System.out.println("페이지 위치 : " + cPage+"페이지 갯수" + numPerpage);
		mv.addObject("res", res);
		mv.addObject("pageBar",EnterprisePageBar.getPageBar2(totalData, ent.getEntNo(), cPage,numPerpage,"mypage.do"));
		mv.addObject("totalData",totalData);
		mv.setViewName("/enterprise/ent_mypage/com_mypage");
		return mv;
	}

	@RequestMapping("/com/applyAd.do")
	public String applyAd() {
		return "/enterprise/ent_mypage/applyAd";
	}

	@RequestMapping("/com/ent_edit.do")
	public ModelAndView entEdit(HttpSession session, ModelAndView mv) {
		String[] jtypes = { "은행관련", "세무/법무", "경리/출납/수납", "증거 투자 분석사", "보험계리사/손해사정인", "웹계발", "시스템 엔지니어", "웹퍼블리셔", "기획",
				"네트워크/보안/운영", "데이터분석", "교육기획", "전문강사", "초중고/특수 교사", "대학교수", "교직원", "입시/보습/학원강사", "마켓팅", "브랜드 마켓팅",
				"시장조사/분석", "상품개발/기획/MD", "온라인 마켓팅", "의사", "한의사", "치과의사", "약사/한약사", "간호사", "간호조무사", "물리치료사", "수의사",
				"고객지원/CS", "호텔/숙박 관련", "가이드", "외식업/식음료", "기타 서비스직", "경영" };
		Login log = (Login) session.getAttribute("commonLogin");
		System.out.println("controller" + session.getAttribute("commonLogin"));
		System.out.println(log.getMemNo());
		Enterprise ent = (Enterprise) service.findOneEnterprise(log);
		String jname = jtypes[ent.getType() - 1];
		System.out.println(ent);
		mv.addObject("enterprise", ent);
		mv.addObject("jname", jname);
		mv.setViewName("/enterprise/ent_mypage/ent_edit");
		return mv;
	}
	@RequestMapping("/com/com_check.do")
	public ModelAndView comCheck(ModelAndView mv,@RequestParam(value="cPage",defaultValue="1") int cPage, 
			@RequestParam(value="numPerpage",defaultValue="5") int numPerpage, Recruitment rec)  {
		/* System.out.println("???"); */
		System.out.println(rec.getRec_no());
		List<Support> s = service.selectSupport(cPage,numPerpage, rec);
		List<Resume> res = new ArrayList<Resume>();
		for(Support l : s) {
			System.out.println("회원번호:" + l.getMem_no());
			res.add(service.selectResume(l.getMem_no()));
		}
		System.out.println("이력서 목록:" + res);
		int totalData=service.selectCount();
		
		mv.addObject("s",s);
		mv.addObject("res", res);
		mv.addObject("pageBar",EnterprisePageBar.getPageBar(totalData,cPage,numPerpage,"com_check.do"));
		mv.addObject("totalData",totalData);
		mv.setViewName("/enterprise/ent_mypage/com_check");
		
		return mv;
	}

	@RequestMapping("/com/ent_edit_end.do")
	public ModelAndView entEditEnd(HttpSession session, SessionStatus ss, Model m, Enterprise ent, ModelAndView mv, 
			@RequestParam(value = "Logo", required = false) CommonsMultipartFile Logo) {
		Login log = (Login) session.getAttribute("commonLogin");
		System.out.println(Logo.getOriginalFilename());
		if(Logo.getOriginalFilename().length() == 0) {
			System.out.println("사진 업로드되지 않음");
			Enterprise eps = (Enterprise) session.getAttribute("Enterprise");
			ent.setEntLogo(eps.getEntLogo());
		}else {
			String path = session.getServletContext().getRealPath("/resources/enterprise/logo/" + ent.getEntNo());
			System.out.println(path);
			String oldName = Logo.getOriginalFilename();
			
			File dir = new File(path);
			if (!dir.exists())
				dir.mkdirs();
			String ext = oldName.substring(oldName.lastIndexOf(".") + 1);
			String newName = ent.getEntName() + "_logo." + ext;
			ent.setEntLogo(newName);
			try {
				Logo.transferTo(new File(path + "/" + newName));
			} catch (IOException e) {
				e.printStackTrace();
			}			
		}
		
		System.out.println("================");
		System.out.println("pw:" + ent.getEntPw());
		System.out.println("logPw:" + log.getMemPw());
		//encoder.matches(password, user.getPassword());
		if (!ent.getEntPw().equals(log.getMemPw())) {
			ent.setEntPw(pwEncoder.encode(ent.getEntPw()));
		}
		System.out.println("비번 암호화 후:" + ent.getEntPw());
		System.out.println(ent);
		int result = service.updateEnterprise(ent);
		String msg = "";
		String loc = "";
		if (result > 0) {
			msg = "회원정보수정 성공";
			loc = "/com/ent_edit.do";
			session.setAttribute("Enterprise", service.findOneEnterprise(log));
		} else {
			msg = "회원정보수정 실패";
			loc = "/com/ent_edit.do";
		}
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("common/msg");
		// session commonlogin 새로운 회원값으로 대체
		System.out.println("방금 들어간 비번:"+ent.getEntPw());
		Login newLog = new Login(log.getType(), ent.getEntNo(), ent.getEntEmail(), ent.getEntPw());
		session.removeAttribute("commonLogin");
		session.setAttribute("commonLogin", newLog);
		return mv;
	}

	@RequestMapping("/com/quit.do")
	public ModelAndView quit(HttpSession session, Enterprise ent, ModelAndView mv) {
		System.out.println("회원탈퇴");
		System.out.println(ent);
		int result = service.quit(ent);
		String msg = "";
		String loc = "";
		if (result > 0) {
			msg = "회원탈퇴 성공";
			loc = "/";
			session.invalidate();
		} else {
			msg = "회원탈퇴 실패";
			loc = "/com/ent_edit.do";
		}
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("common/msg");
		return mv;
	}

	@RequestMapping("/com/membership.do")
	public ModelAndView membership(HttpSession session, Model m, ModelAndView mv) {
		Login log = (Login) session.getAttribute("commonLogin");
		Enterprise ent = service.findOneEnterprise(log);
		session.setAttribute("Enterprise", ent);
		mv.setViewName("enterprise/ent_mypage/membership");
		return mv;
	}

	@RequestMapping("/com/membership_end.do")
	public String membershipEnd(HttpSession session) {
		Login log = (Login) session.getAttribute("commonLogin");
		service.entMembership(log);
		return "/enterprise/ent_mypage/com_mypage";
	}

	@RequestMapping("/com/entBanner.do")
	public String entBanner() {
		return "/enterprise/ent_mypage/banner";
	}

	@RequestMapping("/com/bannerEnd.do")
	public ModelAndView bannerEnd(String bann_title, ModelAndView mv,
			@RequestParam(value = "bann_file", required = false) CommonsMultipartFile bann_file, HttpSession session) {

		Enterprise ent = (Enterprise) session.getAttribute("Enterprise");

		String path = session.getServletContext().getRealPath("/resources/enterprise/banner/" + ent.getEntNo());
		String oldName = bann_file.getOriginalFilename();
		System.out.println(path + " " + oldName);

		File dir = new File(path);
		if (!dir.exists())
			dir.mkdirs();
		String ext = oldName.substring(oldName.lastIndexOf(".") + 1);
		String newName = ent.getEntName() + "_banner." + ext;
		try {
			bann_file.transferTo(new File(path + "/" + newName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		Banner ban = Banner.builder().ent_no(ent.getEntNo()).bann_title(bann_title).bann_path(path).build();
		int result = service.insertBanner(ban);
		String msg = "";
		String loc = "";
		if (result > 0) {
			msg = "배너 등록 성공";
			loc = "/com/mypage.do";
		} else {
			msg = "배너등록 실패";
			loc = "com/bannerEnd.do";
		}
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		System.out.println(ban);

		mv.setViewName("common/msg");

		return mv;
	}

	@ResponseBody
	@RequestMapping("/com/editPwCheck.do")
	public String editPwCheck(HttpSession session, String pwc, Model m) {
		System.out.println("***********************************************");
		String result = "";
		Login log = (Login) session.getAttribute("commonLogin");

		System.out.println("check password : " + pwc);
		m.addAttribute("hello", "hi");

		
		String pw = service.findOneEnterprise(log).getEntPw();
		System.out.println("old pw:" + pw);
		if(pwEncoder.matches(pwc, pw)) {
			System.out.println("password is correct");
			result = "correct";
		}else {
			System.out.println("password is incorrect");
			result = "incorrect";
		}
		return result;
	}
}
