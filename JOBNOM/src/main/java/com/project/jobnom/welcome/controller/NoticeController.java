package com.project.jobnom.welcome.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.welcome.model.service.NoticeService;
import com.project.jobnom.welcome.model.vo.Notice;

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
	@ResponseBody
	@RequestMapping("/footer/insertNotice.do")
	public ModelAndView insertNotice(HttpServletRequest request,ModelAndView mv ) {
		
		Map param = new HashedMap();
		param.put("noticeTitle", request.getParameter("noticeTitle"));
		param.put("noticeContent",request.getParameter("noticeContent"));
		System.out.println(param);
		
		int result = service.insertNotice(param);
		mv.addObject("list",service.selectNoticeList());
		
		mv.setViewName("welcome/notice");
		return mv;
	}
	
	//공지사항 수정 view
	@RequestMapping("/welcome/noticeUpdate.do")
	public ModelAndView noticeUpdate(ModelAndView mv, String noticeNo){
		Notice n = service.selectOneNotice(noticeNo);
		mv.addObject("updateNotice",n);
		mv.setViewName("welcome/noticeUpdate");
		return mv;
		
	}
	
	//공지사항 수정 update
	@RequestMapping("/welcome/noticeUpdateEnd.do")
	public ModelAndView updateNotice(ModelAndView mv, Notice n) {

		
		System.out.println(n);
		int result = service.updateNotice(n);
		String msg = "";
		String loc = "";
		if(result >0) {
			msg ="게시글 수정 성공!";
			loc= "/footer/notice.do";
					
		}else {
			msg ="게시글 수정 실패!";
			loc = "/welcome/noticeUpdate.do?noticeNo="+n.getNoticeNo();
		}
		mv.addObject("msg",msg);
		mv.addObject("loc",loc);
		mv.setViewName("common/msg");
		return mv;
		
	}
	
	//공지사항 삭제 Delete
	@RequestMapping("/welcome/noticeDelete.do")
	public ModelAndView deleteNotice(ModelAndView mv, Notice n) {
		System.out.println(n);
		int result = service.deleteNotice(n);
		String msg = "";
		String loc = "";
		
		if(result > 0 ) {
			msg = "게시글이 삭제 되었습니다.";
			loc = "/footer/notice.do";
		}
		mv.addObject("msg",msg);
		mv.addObject("loc",loc);
		mv.setViewName("common/msg");
		return mv;
	}
	@RequestMapping("/welcome/personal_info.do")
	public ModelAndView personInfo(ModelAndView mv) {
		
		mv.setViewName("welcome/personal_info");
		return mv;
	}
}
