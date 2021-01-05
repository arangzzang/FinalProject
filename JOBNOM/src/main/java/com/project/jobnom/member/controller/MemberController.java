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

import com.project.jobnom.Hire.model.service.HireService;
import com.project.jobnom.Hire.model.vo.Support;
import com.project.jobnom.common.model.vo.Login;
import com.project.jobnom.common.pagebar.PageBarFactory;
import com.project.jobnom.member.model.service.MemberService;
import com.project.jobnom.member.model.vo.MemCategory;
import com.project.jobnom.member.model.vo.MemCategory2;
import com.project.jobnom.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private HireService HireService;
	
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
		List<MemCategory2> list2 = service.selectCategoryList2(cateNo);
		m.addAttribute("cate2",list2);
		return list2;
	}
	//회원가입
	@RequestMapping("/member/enrollMemberEnd")
	public ModelAndView enrollMemberEnd(Member m, ModelAndView mv) {
		String oriPw=m.getMemPw();
		
		m.setMemPw(pwEncoder.encode(oriPw));
		//m.bulider().memEmail(pwEncoder.encode(memPw));// -> map으로 받을땐 이렇게 하면됨.
		
		String loc="redirect:/";
		int result = service.enrollMember(m);
		
		mv.addObject("mem",m);
		mv.addObject("msg",result>0?"회원가입성공":"회원가입실패");
		
		mv.setViewName(loc);
		return mv;
	}
	//비밀번호 확인(Ajax)
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
	//비밀번호 변경(Ajax)
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
		mv.addObject("loc",loc);
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
	//email 변경 시(Ajax)
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
	//이력서화면 이동(Ajax)
	@RequestMapping("/member/myProfile")
	public String myProfile (int memNo, Model m) throws IOException{
		Member mem = service.myProfileView(memNo);
		List<MemCategory> list = service.selectCategoryList();
		System.out.println("회원 카테번호 : "+mem.getCateNo2());
		List<MemCategory2> list2 = service.selectCategoryList2(mem.getCateNo());
		System.out.println("카테 리스트 : "+list2);
		m.addAttribute("cate3",list2);
		m.addAttribute("cate",list);
		m.addAttribute("mem",mem);
		return "/member/mypage/myProfile";
	}
	//관심정보 페이지 이동(첫 화면 팔로잉한 기업)(Ajax)
	@RequestMapping("/member/followingEnt")
	public String followingEnt (int memNo, Model m) throws IOException {
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/interestinfo/followingEnt";
	}
	//계정화면(Ajax)
	@RequestMapping("/member/accountView")
	public String accountView (int memNo, Model m) throws IOException {
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/account/accountView";
	}
	//저장된 채용공고(Ajax)
	@RequestMapping("/member/saveHire")
	public String saveHire (int memNo, Model m) throws IOException {
		
		Member mem = service.mypageView(memNo);
		m.addAttribute("mem",mem);
		return "/member/mypage/interestinfo/saveHire";
	}
	//리뷰작성하기 (Ajax)
	@RequestMapping("/member/insertReview.do")
	public String insertReview(int memNo, Model m)  throws IOException {
		System.out.println("되고있나");
		 List<Map> mem = HireService.mypageView();
		 m.addAttribute("mem",mem);
		 System.out.println("테스트 입니다"+mem);
		 return "Hire/insertReview";
	}
	//면접후기작성 (Ajax)
	@RequestMapping("/member/interviewList")
	public String interviewList(int memNo, Model m) throws IOException {
		 Member mem = service.mypageView(memNo);
		 m.addAttribute("mem",mem);
		 return "/member/mypage/activityHistory/interviewList";
	}
	//리뷰 작성 (Ajax)
	@RequestMapping("/member/reviewList")
	public String reviewList(int memNo, Model m) throws IOException {
		 Member mem = service.mypageView(memNo);
		 m.addAttribute("mem",mem);
		 return "/member/mypage/activityHistory/reviewList";
	}
	//입사지원 (Ajax)
	@RequestMapping("/member/supporting")
	public String supportingCompany(String memNo, Model m,@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage) throws IOException {
		
		List<Support> support = HireService.HireMyHire(memNo, cPage, numPerpage); //지원한 공고 정보검색
		int totalDataSu = HireService.selectSuppertCount(memNo); // 이건 지원한 공고 갯수

		m.addAttribute("support",support);
		m.addAttribute("totalDataSu",totalDataSu);
		
		m.addAttribute("pageBar", PageBarFactory.getPageBar3(totalDataSu, cPage, numPerpage, memNo, "supporting"));
		
		 return "/member/mypage/activityHistory/supportingCompany";
	}
	
}










