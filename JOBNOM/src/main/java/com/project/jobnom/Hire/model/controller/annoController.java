package com.project.jobnom.Hire.model.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.Hire.model.service.annoService;
import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.common.pagebar.PageBarFactory;


@Controller
@SessionAttributes("commonLogin")
public class annoController {

	@Autowired
	private annoService service;
	
	@RequestMapping("/Hire/announcementPage.do")
	public ModelAndView announcementPage(ModelAndView mv,
			@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "10") int numPerpage) {
		// 공고 리스트들 출력해주는곳

		List<Recruitment> anolist = service.anoList(cPage, numPerpage);
		System.out.println("공고페이지바"+anolist);
		int totalData = service.selectCount(); /* 이거페이지바 */
		System.out.println("공고페이지바"+totalData);
		mv.addObject("pageBar", PageBarFactory.getPageBar2(totalData, cPage, numPerpage, "announcementPage.do"));
		
		mv.addObject("anolist", anolist);
		mv.setViewName("Hire/announcementPage");
		return mv;

	}


	@RequestMapping("/Hire/announcementPage2.do")
	public ModelAndView announcementPage2(ModelAndView mv, @RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "10") int numPerpage,int anoNum) {
		// 공고 리스트들 출력해주는곳
		System.out.println("이건 anoNUm :"+anoNum);
		//System.out.println("이건 memNo :"+memNo);
		List<Recruitment> anolist = service.anoList2(anoNum,cPage, numPerpage);
		
		//List<Interestedrcruitment> in=service.selectIn(memNo);
		int totalData = service.selectCount(); /* 이거페이지바 */
		System.out.println("어떻게 나오는지 보까?"+anolist);
		//System.out.println("어떻게 나오노"+in);
		mv.addObject("pageBar", PageBarFactory.getPageBar6(totalData, cPage, numPerpage, anoNum,  "announcementPage2.do"));
		mv.addObject("totalData", totalData);
		mv.addObject("anolist", anolist);
		//mv.addObject("in", in);
		mv.setViewName("Hire/announcementPage");
 
		return mv;

	}
	
	@RequestMapping("/Hire/annoHomeDetailMove.do")
	public ModelAndView annoHomeDetailMove(ModelAndView mv, @RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "10") int numPerpage,int recNo ) {
		// 공고 리스트들 출력해주는곳
		System.out.println("이건 recNo :"+recNo);
		List<Recruitment> anolist = service.annoHomeDetailMove(recNo,cPage, numPerpage);

		int totalData = service.selectCount(); /* 이거페이지바 */
		System.out.println("어떻게 나오는지 보까?"+anolist);
		mv.addObject("pageBar", PageBarFactory.getPageBar5(totalData, cPage, numPerpage,recNo, "annoHomeDetailMove.do"));
		//mv.addObject("totalData", totalData);
		mv.addObject("anolist", anolist);
		mv.setViewName("Hire/announcementPage");
 
		return mv;

	}
	
	
	@RequestMapping("/Hire/annCarrer.do")
	@ResponseBody
	public ModelAndView annCarrer(HttpServletResponse response,ModelAndView mv, Model  m, HttpServletRequest request, @RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "10") int numPerpage, String anoNum, int carNum, String employType) throws Exception{
		// 공고 리스트들 출력해주는곳
		
		
	
		
		
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		if(anoNum !=null) {  
		String anoNum1 = request.getParameter("anoNum");
		System.out.println("번호"+anoNum1);
		paramMap.put("anoNum", anoNum1);
		}else {
			String anoNum1 = null;
			System.out.println("번호1"+anoNum1);
			paramMap.put("anoNum", anoNum1);

		}    
		   
		   
		if(carNum !=0) {
		String carNum1 = request.getParameter("carNum");
		System.out.println("경력"+carNum1);
		paramMap.put("carNum", carNum1);
		}else {
			String carNum1 = null;
			System.out.println("경력2"+carNum1);
			paramMap.put("carNum", carNum1);
		} 
		
		
		if(employType != null) {
		String employType1 = request.getParameter("employType");
		System.out.println("고용형태"+employType1); 
		paramMap.put("employType", employType1);
		}else {
			String employType1 = null;
			System.out.println("고용형태2"+employType1); 
			paramMap.put("employType", employType1);
		}   
		          
		List<Recruitment> anolist = service.annCarrer(paramMap,cPage, numPerpage);
		System.out.println("오잉"+anolist);
		int totalData = service.selectCount(); /* 이거페이지바 */
		  
		mv.addObject("pageBar", PageBarFactory.getPageBar2(totalData, cPage, numPerpage, "announcementPage.do"));
		//mv.addObject("totalData", totalData);
		mv.addObject("anolist", anolist);
		mv.setViewName("Hire/announcementPage");
    
		return mv; 
 
	}
} 
