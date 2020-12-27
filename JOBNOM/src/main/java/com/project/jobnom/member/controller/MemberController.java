package com.project.jobnom.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.member.model.service.MemberService;
import com.project.jobnom.member.model.vo.MemCategory;
import com.project.jobnom.member.model.vo.MemCategory2;
import com.project.jobnom.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;
	
	//회원가입 페이지전환(카테고리리스트출력)
	@RequestMapping("/member/enrollMember")
	public String enrollMember(Model m) {
		List<MemCategory> list = service.selectCategoryList();
		m.addAttribute("cate",list);
		return "common/enroll";
	}
	@RequestMapping("/member/selectJob")
	@ResponseBody
	public List<MemCategory2> selectBjo(int cateNo, Model m) throws IOException{
		System.out.println("들어온값 : "+cateNo);
		List<MemCategory2> list2 = service.selectCategoryList2(cateNo);
		System.out.println("==============================");
		System.out.println(list2);
		m.addAttribute("cate2",list2);
		return list2;
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
	public String changeMemEmail(String memEmail, HttpSession session, Model m) {
		String loc="";
		Login who=(Login)session.getAttribute("commonLogin");
		Map<String,Object> mem=new HashMap<String,Object>();

		mem.put("memNo",who.getMemNo());
		mem.put("memEmail",memEmail);
		
		int result= service.changeMemEmail(mem);
		
		if (result>0) {
			m.addAttribute("msg","이메일이 변경되었습니다.");
			loc="redirect:/member/myPage?memNo="+who.getMemNo();
		}else {
			m.addAttribute("msg","이메일 변경을 실패하셨습니다. 잠시후에 다시 시도해주세요.");
			m.addAttribute("loc","/member/myPage?memNo="+who.getMemNo());
			loc="common/msg";
		}
		return loc;
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
	//비밀번호 확인
	@RequestMapping("/member/selectPw")
	@ResponseBody
	public int selectMemPw(@RequestParam Map data) {
		int count=0;
		Member mem=service.selectPw(data);
		
		if(pwEncoder.matches((String)data.get("memPw"), mem.getMemPw())) {
			count=1;
		}else {
			count=0;
		}
		return count;
	}
	//비밀번호 변경
	@RequestMapping("/member/updatePasswordEnd")
	public ModelAndView updatePasswordEnd(HttpSession session, String password1, ModelAndView mv) {
		Login who=(Login)session.getAttribute("commonLogin");
		Map<String,Object> mem=new HashMap<String,Object>();
		String loc="redirect:/";
		
		who.setMemPw(pwEncoder.encode(password1));
		mem.put("memNo",who.getMemNo());
		mem.put("password1",who.getMemPw());
		
		int result= service.updatePw(mem);
		mv.addObject("msg",result>0?"비밀번호 변경 완료":"잠시후에 다시 시도해주세요.");
		
		mv.setViewName(loc);
		return mv;
	}
}










