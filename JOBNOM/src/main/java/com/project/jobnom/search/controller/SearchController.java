package com.project.jobnom.search.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	
	@RequestMapping("/search/searchResult.do")
	public String searchResultList() {
		return "search/searchResultList";
	}
	
	//기업 더보기 클릭시 페이지
	@RequestMapping("/search/searchResultMore.do")
	public String searchResultMore() {
		return "search/searchResultMoreList";
	}
}
