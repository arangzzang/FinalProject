package com.project.jobnom.search.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.pagebar.PageBarFactory;
import com.project.jobnom.search.model.service.SearchService;

@Controller
public class SearchController {
	
	@Autowired
	private SearchService service;
	
	//검색 결과 화면
	@RequestMapping("/searchResult.do")
	public ModelAndView searchResultList(ModelAndView mv, @RequestParam String keyword) {
		
		System.out.println(keyword);
			if(keyword == "") {
				mv.setViewName("search/searchResultList");
				return mv;
				
			}else {
				mv.addObject("list",service.selectSearchResult(keyword));
				mv.addObject("list2",service.selectSercjResultRec(keyword));
				mv.addObject("list3",service.selectFav());
				mv.setViewName("search/searchResultList");
				System.out.println(mv.addObject("list2",service.selectSercjResultRec(keyword)));
				return mv;
				
				
			}
	}
	
	//기업 더보기 화면
	@RequestMapping("/search/searchResultMore.do")
	public ModelAndView searchResultMore(ModelAndView mv,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "10") int numPerpage) {
		List<Map> list = service.searchResultMore(cPage,numPerpage);
		System.out.println(list);
		int totalData = service.selectCount(); /* 이거페이지바 */
		
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, "searchResultMore.do", null));
		mv.addObject("totalData", totalData);
		mv.addObject("list", list);
		mv.setViewName("search/searchResultMoreList");
		return mv;
		
	}
	
	//기업 더보기 화면 카테고리별 ajax
	@RequestMapping("/ajaxCateList")
	public ModelAndView ajaxCategoryList(ModelAndView mv, String entCategory) {
		
		System.out.println("zzzzzzzzzzzzzzz"+ entCategory);
		
		List<Map> list = service.ajaxCategoryList(entCategory);
		System.out.println("카테고리별"+list);
		mv.addObject("ajaxList",list);
		mv.setViewName("search/ajax/ajaxCategoryList");
		return mv;
	}
	// 검색기업 즐겨 찾기
	@RequestMapping("/search/recFav.do")
	public String recFav(ModelAndView mv, String recNo,String memNo) {
		
		System.out.println("공고번호"+recNo+"멤버 번호"+memNo);
		
			Map param = new HashedMap();
			param.put("recNo", recNo);
			param.put("memNo", memNo);
			int result =service.recFav(param);
			System.out.println("저장하기"+ result);
			return "Hire/Interestedrcruitment" ;
			
	}
	// 검색 기업 즐겨찾기 빼기
	@RequestMapping("/search/recFavDelete.do")
	public String recFavDelete(String recNo,String memNo) {
		
		Map param = new HashedMap();
		param.put("recNo", recNo);
		param.put("memNo", memNo);
		int result = service.recFavDelete(param);
		
		System.out.println("삭제하기"+ result);
		return "/search/searchResultList" ;
		
	}
}
