package com.project.jobnom.member.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.member.model.service.MemberService;
import com.project.jobnom.member.model.vo.Member;

@Controller
@SessionAttributes("memberLogin")
public class MemberController {

	@Autowired
	private MemberService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;
	//로그인
//	@RequestMapping("/member/memberLogin")
//	public String memberLogin (String memEmail, String memPw, Model m) {
//		
//		Member mem = service.memberLogin(memEmail);
//		System.out.println(mem);
//		String loc="";
//		
//		if(pwEncoder.matches(memPw, mem.getMemPw())) {
//			m.addAttribute("memberLogin",mem);
//			loc="redirect:/";
//		}else {
//			m.addAttribute("msg","로그인실패");
//			m.addAttribute("loc","/");
//			loc="common/msg";
//		}
//		return loc;
//	}
	
	//회원가입 페이지전환
	@RequestMapping("/member/enrollMember")
	public String enrollMember() {
		return "common/enroll";
	}
	//회원가입
	@RequestMapping("/member/enrollMemberEnd")
	public ModelAndView enrollMemberEnd(Member m, ModelAndView mv) {
		
		String oriPw=m.getMemPw();
		System.out.println(pwEncoder.encode(oriPw));
		
		m.setMemPw(pwEncoder.encode(oriPw));
		//m.bulider().memEmail(pwEncoder.encode(memPw)); -> map으로 받을땐 이렇게 하면됨.
		
		String loc="redirect:/";
		int result = service.enrollMember(m);
		mv.addObject("mem",m);
		mv.addObject("msg",result>0?"회원가입성공":"회원가입실패");
		
		mv.setViewName(loc);
		return mv;
	}
	//마이페이지 화면전환
	@RequestMapping("/member/myPage")
	public String mypageView(int memNo, Model m) {
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "member/mypage/mypageFirst";
	}
	//email 변경 시
	@RequestMapping("/member/changeEmail")
	public ModelAndView changeMemEmail(String memName, ModelAndView mv) {
		
		String loc="redirect:/member/mypage/mypageFirst";
		int result= service.changeMemEmail(memName);
		mv.addObject("msg",result>0?"이메일변경 성공":"이메일변경 실패");
		mv.setViewName(loc);
		return mv;
	}
	//계정 설정 페이지 화면전환(Ajax)
	@RequestMapping("/member/accountSettings")
	public String accountSettings(int memNo, Model m) throws IOException {
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/account/accountSettings";
	}
	//비밀번호 변경 페이지 화면 전환(Ajax)
	@RequestMapping("/member/updatePassword")
	public String updatePassword(int memNo, Model m) throws IOException {
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/account/updatePassword";
	}
	//이력서화면 이동
	@RequestMapping("/member/myProfile")
	public String myProfile (int memNo, Model m) throws IOException{
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/myProfile";
	}
	//관심정보 페이지 이동(첫 화면 팔로잉한 기업)
	@RequestMapping("/member/followingEnt")
	public String followingEnt (int memNo, Model m) throws IOException {
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/interestinfo/followingEnt";
	}
	//계정화면
	@RequestMapping("/member/accountView")
	public String accountView (int memNo, Model m) throws IOException {
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/account/accountView";
	}
	//저장된 채용공고
	@RequestMapping("/member/saveHire")
	public String saveHire (int memNo, Model m) throws IOException {
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/interestinfo/saveHire";
	}
}
