package com.project.jobnom.Hire.model.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.Hire.model.service.HireService;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.common.pagebar.PageBarFactory;

@Controller
public class HireController {
	
	
	@Autowired
	private HireService service;
	
	@RequestMapping("/Hire/HireHome.do")
	public ModelAndView HireHome(ModelAndView mv,
			@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage) {
		//공고 리스트들 출력해주는곳
		List<Recruitment> Recruitment = service.HireHomeRecruitmentList(cPage, numPerpage);
		System.out.println(Recruitment);
		mv.addObject("Recruitment",Recruitment);
		//페이징바
		int totalData = service.selectCount(); /* 이거페이지바 */

		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, "HireHome.do"));
		
		
		mv.addObject("Recruitment",Recruitment);
		mv.setViewName("Hire/HireHome");
		return mv;
	}
	

	
	@RequestMapping("/Hire/HireMyHire.do")
	public String HireMyHire() {
		
		return "Hire/HireMyHire";
	}
	
	@RequestMapping("/Hire/HireFavorites.do")
	public String HireFavorites() {
		
		return "Hire/HireFavorites";
	}
	
	@RequestMapping("/Hire/HireAnnouncement.do")
	public String HireAnnouncement() {
		
		return "Hire/HireAnnouncement";
	}
	
	
	@RequestMapping("/Hire/announcementPage.do")
	public String announcementPage() {
			
		return "Hire/announcementPage";
	}
	
	@RequestMapping("/Hire/insertReview.do")
	public String insertReview() {
		
			
		return "Hire/insertReview";
	}
	
	@RequestMapping("/Hire/insertReview2.do")
	public String insertReview2(HttpServletRequest request, Model model) throws Exception {

        Map<String, Object> paramMap = new HashMap<String, Object>();

		 String review_name = request.getParameter("review_name");
	        paramMap.put("review_name", review_name);
		String review_title = request.getParameter("review_title");
		    paramMap.put("review_title", review_title);
		String review_contents = request.getParameter("review_contents");
			paramMap.put("review_contents", review_contents);
		String review_satisfaction = request.getParameter("review_satisfaction");
			paramMap.put("review_satisfaction", review_satisfaction);
		String review_welfare = request.getParameter("review_welfare");
			paramMap.put("review_welfare", review_welfare);
		String review_promotion = request.getParameter("review_promotion");
			paramMap.put("review_promotion", review_promotion);
		String review_executive = request.getParameter("review_executive");
			paramMap.put("review_executive", review_executive);
			System.out.println(paramMap);
			
			int result=service.insertReview(paramMap);
			


		
		return "Hire/insertReview";
	
	}
	
	
	@RequestMapping("/Hire/supportingCompany.do")
	public String supportingCompany() {
		
			
		return "Hire/supportingCompany";
	}
	
	@RequestMapping("/Hire/reviewAVG.do")
	public String reviewAVG() {
		
			
		return "Hire/announcementPage";
	}
	
	
	
	
	
	
	
	

  


	
	
	
	

}
