package com.project.jobnom.search.controller;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.pagebar.PageBarFactory;
import com.project.jobnom.enterprise.model.vo.Enterprise;
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
				mv.setViewName("search/searchResultList");
				System.out.println(mv.addObject("list2",service.selectSercjResultRec(keyword)));
				return mv;
				
				
			}
	}
	
	//기업 더보기 화면
	@RequestMapping("/search/searchResultMore.do")
	public ModelAndView searchResultMore(ModelAndView mv,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage) {
		List<Map> list = service.searchResultMore(cPage,numPerpage);
		System.out.println(list);
		int totalData = service.selectCount(); /* 이거페이지바 */
		
		mv.addObject("entFollow",service.entFollowCheck()); // 기업 팔로잉
		System.out.println("이거 값 나오나??????"+mv.addObject("entFollow",service.entFollowCheck()));
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, null,"searchResultMore.do"));
		mv.addObject("totalData", totalData);
		mv.addObject("list", list);
		mv.setViewName("search/searchResultMoreList");
		return mv;
		
	}
	
	//기업 더보기 화면 카테고리별 ajax
	@RequestMapping("/ajaxCateList")
	public ModelAndView ajaxCategoryList(ModelAndView mv, String entCategory,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage) {
		
		System.out.println("zzzzzzzzzzzzzzz"+ entCategory);
		int totalData = service.selectCount();
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, null,"searchResultMore.do"));
		mv.addObject("totalData", totalData);
		
		if(entCategory.equals("cate1")) {
			System.out.println("여기로 넘어옴");
			List<Map> firstCate = service.ajaxCategoryList2(entCategory);
			System.out.println("카테고리별"+firstCate);
			mv.addObject("ajaxList",firstCate);
			mv.addObject("entFollow",service.entFollowCheck());
			mv.setViewName("search/ajax/ajaxCategoryList");
			
		}else {
			
			List<Map> list = service.ajaxCategoryList(entCategory);
			System.out.println("카테고리별"+list);
			mv.addObject("entFollow",service.entFollowCheck());// 기업 팔로잉
			mv.addObject("ajaxList",list);
			mv.setViewName("search/ajax/ajaxCategoryList");
		}
		
		return mv;
	}
	
	
	
	//기업 팔로잉
	@RequestMapping("/search/entFollow.do")
	public ModelAndView entFollow(ModelAndView mv, String memNo,String entNo,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage) {
		// 기업 팔로잉
		Map param = new HashedMap();
		param.put("memNo", memNo);
		param.put("entNo",entNo);
		
		int result = service.entFollow(param);
		
		// 기업 더보기, 페이징바
		List<Map> list = service.searchResultMore(cPage,numPerpage);
		System.out.println(list);
		int totalData = service.selectCount();
		
		if(result> 0 ) {
			//기업 팔로잉 리스트
			mv.addObject("entFollow",service.entFollowCheck());
			mv.setViewName("search/searchResultMoreList");
			// 기업 더보기, 페이징바
			mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, null,"searchResultMore.do"));
			mv.addObject("totalData", totalData);
			mv.addObject("list", list);
		}
		
		System.out.println(result);
		System.out.println(mv.addObject("entFollow",service.entFollowCheck()));
		
		return mv;
		
	}
	
	//기업 언팔로잉
	@RequestMapping("/search/entUnFollow.do")
	public ModelAndView entUnFollow(ModelAndView mv,String memNo,String entNo,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage ) {
		
		// 기업 언팔로잉
		Map param = new HashedMap();
		param.put("memNo", memNo);
		param.put("entNo",entNo);
		
		int result = service.entUnFollow(param);
		
		// 기업 더보기, 페이징바
				List<Map> list = service.searchResultMore(cPage,numPerpage);
				System.out.println(list);
				int totalData = service.selectCount();
		if(result > 0) {
			//기업 팔로잉 리스트
			mv.addObject("entFollow",service.entFollowCheck());
			mv.setViewName("search/searchResultMoreList");
			// 기업 더보기, 페이징바
			mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, null,"searchResultMore.do"));
			mv.addObject("totalData", totalData);
			mv.addObject("list", list);
			
		}
		return mv;
	}
	//검색창 자동 완성
	@RequestMapping("/search/searchAuto.do")
	@ResponseBody
	public String streamAjax(ModelAndView mv, String key) throws Exception{
		
		System.out.println(key);
		List<Enterprise> list = service.selectOneRecruitment(key);
		System.out.println(list);
		
		String csv = "";
		for(int i = 0; i<list.size(); i++) {
			if(i != 0) csv += ",";
			csv += list.get(i).getEntName();
		}
		
		return csv;
	}
	//검색창 자동 완성
	@RequestMapping("/search/searchAuto2.do")
	@ResponseBody
	public String StreamAjax2(ModelAndView mv, String key) throws Exception{
		
		List<Enterprise> list = service.searchAuto2(key);
		
		String csv2 = "";
		for(int i = 0; i<list.size(); i++) {
			if(i != 0) csv2 += ",";
			csv2 += list.get(i).getEntNo();
		}
		return csv2;
	}
}

