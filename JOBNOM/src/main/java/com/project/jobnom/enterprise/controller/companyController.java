package com.project.jobnom.enterprise.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Banner;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.Support;
import com.project.jobnom.enterprise.page.EnterprisePageBar;

@Controller
public class companyController {
	@Autowired
	EnterpriseService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;

	@RequestMapping("/enterprise/companyList.do")
	public String companyList() {
		
		return "enterprise/companyList";
	}

	@RequestMapping("/enterprise/com_info.do")
	public String companyInfo() {
		
		return "enterprise/com_info";
	}
	
	@RequestMapping("/enterprise/com_review.do")
	public String companyReview() {
		
		return "enterprise/com_review";
	}
	
	@RequestMapping("/enterprise/com_interview.do")
	public String companyInterview() {
		
		return "enterprise/com_interview";
	}
	
	@RequestMapping("/enterprise/com_job.do")
	public String companyJob() {
		
		return "enterprise/com_job";
	}
	@RequestMapping("/enterprise/applyAdEnd.do")
	public ModelAndView applyAdEnd(ApplyAd ad, Model m, ModelAndView mv) {
		if(ad.getRec_salary()==null) {
			ad.setRec_salary("회사내규에 따름");
		}
		System.out.println(ad);
		int result = service.insertApplyAd(ad);
		String msg="";
		String loc="";
		if(result>0) {
			msg="공고등록 성공";
			loc="/com/mypage.do";
		}else {
			msg="공고등록 실패";
			loc="/enterprise/applyAd.do";
		}
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("/common/msg");
		return mv;
	}
	@RequestMapping("/com/mypage.do")
	public String comMypage(HttpSession session) {
		Login log=(Login)session.getAttribute("commonLogin");
		Enterprise ent = service.findOneEnterprise(log);
		session.setAttribute("Enterprise", ent);
		return "/enterprise/ent_mypage/com_mypage";
	}
	@RequestMapping("/com/applyAd.do")
	public String applyAd() {
		return "/enterprise/ent_mypage/applyAd";
	}
	@RequestMapping("/com/ent_edit.do")
	public ModelAndView entEdit(HttpSession session, ModelAndView mv) {
		String[] jtypes = {"은행관련", "세무/법무","경리/출납/수납", "증거 투자 분석사", 
				"보험계리사/손해사정인", "웹계발", "시스템 엔지니어", "웹퍼블리셔", "기획",
				"네트워크/보안/운영", "데이터분석", "교육기획", "전문강사", "초중고/특수 교사", 
				"대학교수", "교직원", "입시/보습/학원강사", "마켓팅", "브랜드 마켓팅", 
				"시장조사/분석", "상품개발/기획/MD", "온라인 마켓팅", "의사", "한의사", "치과의사", 
				"약사/한약사", "간호사", "간호조무사", "물리치료사", "수의사", "고객지원/CS", 
				"호텔/숙박 관련", "가이드", "외식업/식음료", "기타 서비스직", "경영"};
		Login log = (Login)session.getAttribute("commonLogin");
		System.out.println("controller" + session.getAttribute("commonLogin"));
		System.out.println(log.getMemNo());
		Enterprise ent = (Enterprise)service.findOneEnterprise(log);
		String jname = jtypes[ent.getType()-1];
		System.out.println(ent);
		mv.addObject("enterprise", ent);
		mv.addObject("jname", jname);
		mv.setViewName("/enterprise/ent_mypage/ent_edit");
		return mv;
	}
	//지원자 조회 or 페이징 처리
	@RequestMapping("/com/com_check.do")
	public ModelAndView comCheck(ModelAndView mv,@RequestParam(value="cPage",defaultValue="1") int cPage, 
			@RequestParam(value="numPerpage",defaultValue="5") int numPerpage)  {
		System.out.println("???");
		List<Support> s = service.selectSupport(cPage,numPerpage);
		int totalData=service.selectCount();
		mv.addObject("s",s);
		mv.addObject("pageBar",EnterprisePageBar.getPageBar(totalData,cPage,numPerpage,"com_check.do"));
		mv.addObject("totalData",totalData);
		mv.setViewName("/enterprise/ent_mypage/com_check");
		
		return mv;
	}

	@RequestMapping("/com/ent_edit_end.do")
	public ModelAndView entEditEnd(HttpSession session, SessionStatus ss, Model m, Enterprise ent, ModelAndView mv) {
		Login log=(Login)session.getAttribute("commonLogin");
		System.out.println(ent.getRepPhone());
		ent.setEntPw(pwEncoder.encode(ent.getEntPw()));
		System.out.println("비번 암호화 후:" + ent.getEntPw());
		System.out.println(ent);
		int result = service.updateEnterprise(ent);
		String msg="";
		String loc="";
		if(result>0) {
			if(!ss.isComplete()) {
				//세션삭제하기 -> setComplete();
				ss.setComplete();	
			}			
			if(session != null) session.invalidate();
			
			mv.addObject("commonLogin", service.findOneEnterprise(log));
			msg="회원정보수정 성공";
			loc="/com/ent_edit.do";
		}else {
			msg="회원정보수정 실패";
			loc="/com/ent_edit.do";
		}
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("common/msg");
		//session commonlogin 새로운 회원값으로 대체
		return mv;
	}
	@RequestMapping("/com/membership.do")
	public ModelAndView membership(HttpSession session, Model m, ModelAndView mv) {
		Login log=(Login)session.getAttribute("commonLogin");
		Enterprise ent = service.findOneEnterprise(log);
		session.setAttribute("Enterprise", ent);
		System.out.println(ent);
		mv.setViewName("enterprise/ent_mypage/membership");
		return mv;
	}
	@RequestMapping("/com/membership_end.do")
	public String membershipEnd(HttpSession session) {
		Login log=(Login)session.getAttribute("commonLogin");
		service.entMembership(log);
		return "/enterprise/ent_mypage/com_mypage";
	}
	@RequestMapping("/com/entBanner.do")
	public String entBanner() {
		return "/enterprise/ent_mypage/banner";
	}
	
	
	@RequestMapping("/com/bannerEnd.do")
	public ModelAndView bannerEnd(String bann_title, ModelAndView mv, 
			@RequestParam(value="bann_file", required=false) 
			CommonsMultipartFile bann_file, 
			HttpSession session) {
		
		Enterprise ent = (Enterprise)session.getAttribute("Enterprise");
		
		String path=session.getServletContext().getRealPath("/resources/enterprise/banner/" + ent.getEntNo());
		String oldName=bann_file.getOriginalFilename();
		System.out.println(path + " " + oldName);
		
		File dir=new File(path);
		if(!dir.exists()) dir.mkdirs();
		String ext=oldName.substring(oldName.lastIndexOf(".")+1);
		String newName = ent.getEntName() + "_banner." + ext;
		try {
			bann_file.transferTo(new File(path+"/"+newName));
		}catch(IOException e){
			e.printStackTrace();
		}
		Banner ban = Banner.builder().ent_no(ent.getEntNo()).bann_title(bann_title).bann_path(path).build();
		int result = service.insertBanner(ban);
		String msg="";
		String loc="";
		if(result>0) {
			msg="배너 등록 성공";
			loc="/com/mypage.do";
		}else {
			msg="배너등록 실패";
			loc="com/bannerEnd.do";
		}
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		System.out.println(ban);
		
		
		mv.setViewName("common/msg");
		
		return mv;
	}	

}
