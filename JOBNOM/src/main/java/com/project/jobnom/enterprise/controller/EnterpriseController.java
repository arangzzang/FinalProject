package com.project.jobnom.enterprise.controller;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.enterprise.model.service.EnterpriseService;
import com.project.jobnom.enterprise.model.vo.ApplyAd;
import com.project.jobnom.enterprise.model.vo.Category2;
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.enterprise.model.vo.MemberDataC2;
import com.project.jobnom.enterprise.model.vo.PayData;

@Controller
public class EnterpriseController {

	@Autowired
	EnterpriseService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;

	// 기업 회원가입
	@RequestMapping("/enterprise/enrollEnterEnd")
	public ModelAndView enrollEnterEnd(Enterprise ent, ModelAndView mv, HttpSession session,
			@RequestParam(value = "Logo", required = false) CommonsMultipartFile Logo) {
		String oriPw = ent.getEntPw();
		ent.setEntPw(pwEncoder.encode(oriPw));
		System.out.println("=========들어온값===========");
		System.out.println(ent);
		Login log = new Login(null, 0, ent.getEntEmail(), null);
		String oldName = Logo.getOriginalFilename();
		String ext = oldName.substring(oldName.lastIndexOf(".") + 1);
		String newName = ent.getEntName() + "_logo." + ext;
		ent.setEntLogo(newName);
		int result = service.enrollEnter(ent);
		System.out.println(result > 0 ? "회원가입성공" : "회원가입실패");
		ent = service.findEmailEnterprise(log);
		System.out.println(ent);// null

		System.out.println(ent.getEntNo());
		String path = session.getServletContext().getRealPath("/resources/enterprise/logo/" + ent.getEntNo());

		System.out.println(path);
		File dir = new File(path);
		if (!dir.exists())
			dir.mkdirs();
		try {
			Logo.transferTo(new File(path + "/" + newName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		mv.addObject("ent", ent);
		mv.addObject("msg", result > 0 ? "회원가입성공" : "회원가입실패");

		String loc = "redirect:/";
		mv.setViewName(loc);

		return mv;
	}

	@RequestMapping("/com/charts")
	public String charts(Model m) {
		List<MemberDataC2> memDataC2 = service.memDataC2();
		System.out.println(memDataC2);
		m.addAttribute("memDataC2", memDataC2);
		List<MemberDataC2> entDataC2 = service.entDataC2();
		System.out.println(entDataC2);
		m.addAttribute("entDataC2", entDataC2);
		List<PayData> payData = service.payData();

		for (PayData pd : payData) {
			if (pd.getRec_salary().equals("회사내규에 따름")) {
				pd.setRec_salary("0");
			}
		}
		System.out.println(payData);
		m.addAttribute("payData", payData);

		
		  
		 System.out.println("데이터 길이:" + payData.size()); 
		 String[] arr = new String[payData.size()]; 
		 System.out.println("배열 길이:" + arr.length); 
		 for(int i=0; i<arr.length; i++) { 
			 arr[i] = "{x:"+ payData.get(i).getRec_salary() + ", y:" + payData.get(i).getCount()+ "}"; 
			 }
		  
		 int[] recsal = new int[payData.size()]; 
		 for(int i=0; i<recsal.length;i++) {
			 recsal[i] = Integer.parseInt(payData.get(i).getRec_salary());
			 }
		 Arrays.sort(recsal); 
		 System.out.println("순서대로" + Arrays.toString(recsal));
		 String payArr = Arrays.deepToString(arr); 
		 System.out.println(payArr);
		 
		 m.addAttribute("payArr", payArr);
		 return "/enterprise/com_charts";
	}
	@RequestMapping("/editAd")
	public String editAd(String recNo, Model m) {
		m.addAttribute("rec_no", recNo);
		System.out.println(recNo);
		ApplyAd applyAd = (ApplyAd)service.findAdByNo(recNo);
		List<Category2> c2 = service.getC2();
		System.out.println(c2);
		System.out.println(applyAd);
		m.addAttribute("applyAd", applyAd);
		m.addAttribute("c2", c2);
		return "/enterprise/ent_mypage/editAd";
	}
	@RequestMapping("/editAd_end")
	public ModelAndView editAdEnd(ApplyAd ad, ModelAndView mv) {
		String msg = "";
		String loc = "";
		if (ad.getRec_salary() == null) {
			ad.setRec_salary("회사내규에 따름");
		}
		int result = service.updateApplyAd(ad);
		if(result>0) {
			msg="공고 수정 완료";
			loc="com/mypage.do";
		}else {
			msg="공고 수정 실패";
			loc="/com/mypage.do";
		}
		System.out.println(ad);
		mv.addObject("msg", msg);
		mv.addObject("loc", loc);
		mv.setViewName("common/msg");
		return mv;
	}
}
