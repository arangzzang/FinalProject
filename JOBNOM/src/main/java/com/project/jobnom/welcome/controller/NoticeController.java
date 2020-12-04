package com.project.jobnom.welcome.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.welcome.model.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService service;
	
	//공지사항 보기
	@RequestMapping("/footer/notice.do")
	public ModelAndView noticeList(ModelAndView mv) {
		
		mv.addObject("list",service.selectNoticeList());
		
		mv.setViewName("welcome/notice");
		return mv;
	}
	
	//공지사항 작성 뷰
	@RequestMapping("/footer/noticeWrite.do")
	public String noticeWrite() {
		
		
		
		return "welcome/noticeWrite";
	}
	
	//공지사항 작성 insert
	@RequestMapping("/footer/insertNotice.do")
	public String insertNotice(HttpServletRequest request ) {
		
		Map param = new HashedMap();
		param.put("noticeTitle", request.getParameter("noticeTitle"));
		param.put("noticeContent",request.getParameter("noticeContent"));
		System.out.println(param);
		
		int result = service.insertNotice(param);
		
		return "welcome/notice";
	}
}
