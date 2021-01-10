package com.project.jobnom;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.jobnom.search.model.service.SearchService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private SearchService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		List<Map> banner = new ArrayList<Map>();  
		List<Map> rndList = new ArrayList<Map>();
		
		// 배너 리스트 출력
		banner = service.bannerList();
		
		// DB 배너 데이터 랜덤값 출력
		Random random = new Random();
		
		for(int i = 0; i<banner.size(); i++ ) {
			int index = random.nextInt(banner.size());
			rndList.add(banner.get(index));
			banner.remove(index);
		}
		
		//배너 자동 삭제
		int result = service.deleteBanner();
		
		model.addAttribute("rndList",rndList); // 배너 랜덤 값
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("list",service.indexReviewList()); // 리뷰
		return "index";

	}
	
}
