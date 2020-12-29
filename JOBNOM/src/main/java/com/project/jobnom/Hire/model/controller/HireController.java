package com.project.jobnom.Hire.model.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.Hire.model.service.HireService;
import com.project.jobnom.Hire.model.service.annoService;
import com.project.jobnom.Hire.model.vo.Interestedrcruitment;
import com.project.jobnom.Hire.model.vo.Recruitment;
import com.project.jobnom.Hire.model.vo.Support;
import com.project.jobnom.common.pagebar.PageBarFactory;


@Controller
@SessionAttributes("commonLogin")
public class HireController {
	
	
	@Autowired
	private HireService service;

	@Autowired
	private annoService service2;

	@RequestMapping("/Hire/HireHome.do")
	public ModelAndView HireHome(ModelAndView mv, @RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage, String memNo) {
		// 공고 리스트들 출력해주는곳

		List<Map> re = service.HireHomeRecruitmentList(cPage, numPerpage);
		mv.addObject("re", re);

		System.out.println(memNo);
		List<Map> m = service.MemberList(memNo);
		mv.addObject("m", m);
		System.out.println("머지" + m);

		// 페이징바
		int totalData = service.selectCount(); /* 이거페이지바 */
		System.out.println("페이지바" + totalData);
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, memNo, "HireHome.do"));
		mv.setViewName("Hire/HireHome");
		return mv;
	}

	@RequestMapping("/Hire/HireMyHire.do")
	public ModelAndView HireMyHire(ModelAndView mv, @RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage, String memNo) {
		System.out.println("허히");
		System.out.println("맴버번호" + memNo);
		List<Support> support = service.HireMyHire(memNo, cPage, numPerpage);

		mv.addObject("support", support);
		System.out.println(support);
		int totalDataSu = service.selectSuppertCount(); // 이건 지원한 공고 갯수
		int totalDataIn = service.selectInterestedrcruitmentCount(); // 이건 즐겨찾기 갯수
		mv.addObject("totalDataSu", totalDataSu);
		mv.addObject("totalDataIn", totalDataIn);
		mv.addObject("pageBar", PageBarFactory.getPageBar3(totalDataSu, cPage, numPerpage, memNo, "HireMyHire.do"));

		mv.setViewName("Hire/HireMyHire");
		return mv;

	}

	@RequestMapping("/Hire/HireFavorites.do")
	public ModelAndView HireFavorites(ModelAndView mv, @RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "5") int numPerpage, String memNo) {
		System.out.println("웅웅");
		System.out.println("웅웅" + memNo);
		List<Interestedrcruitment> i = service.HireFavorites(memNo, cPage, numPerpage);

		mv.addObject("i", i);
		System.out.println(i);
		int totalDataSu = service.selectSuppertCount(); // 이건 지원한 공고 갯수
		int totalDataIn = service.selectInterestedrcruitmentCount(); // 이건 즐겨찾기 갯수
		mv.addObject("totalDataSu", totalDataSu);
		mv.addObject("totalDataIn", totalDataIn);

		mv.addObject("pageBar", PageBarFactory.getPageBar4(totalDataIn, cPage, numPerpage, memNo, "HireFavorites.do"));
		mv.setViewName("Hire/HireFavorites");
		return mv;
	}

	@RequestMapping("/Hire/HireAnnouncement.do")
	public ModelAndView HireAnnouncement(ModelAndView mv) {
		/*
		 * List<Recruitment> anolist = service.RecruitmentList();
		 * 
		 * mv.addObject("anolist", anolist);
		 */
		mv.setViewName("Hire/HireAnnouncement");
		return mv;

		// return "Hire/HireAnnouncement";
	}

	@RequestMapping("/Hire/insertReview.do")
	public String insertReview(int memNo, Model m)  throws IOException {
		/*
		 * System.out.println("전환"+memNo); Member mem = service.selectMember(memNo);
		 * System.out.println(mem); m.addAttribute("mem",mem);
		 */
		return "Hire/insertReview";
	}

	@RequestMapping("/Hire/insertReview2.do")
	public String insertReview2(HttpServletRequest request) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		String review_name = request.getParameter("review_name");
		paramMap.put("review_name", review_name);
		String review_title = request.getParameter("review_title");
		paramMap.put("review_title", review_title);
		String mem_no = request.getParameter("mem_no");
		paramMap.put("mem_no", mem_no);
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
		int result = service.insertReview(paramMap);
		
		return "Hire/insertReview";
	}

	@RequestMapping("/Hire/supportingCompany.do")
	public String supportingCompany() {

		return "Hire/supportingCompany";
	}

//공소 강세 페이지에서 상세 버튼
	@RequestMapping("/Hire/anoDetail.do")
	public ModelAndView anoDetail(ModelAndView mv, String rec_no, HttpServletRequest request) throws Exception {
		System.out.println("혹시");

		Map<String, Object> paramMap = new HashMap<String, Object>();

		String rec_no1 = request.getParameter("rec_no");
		paramMap.put("rec_no", rec_no1);

		List<Map> r = service.selectRecruitmentList(paramMap);
		System.out.println("서비스 가기전" + rec_no);
//		mv.addObject(service.selectRecruitmentList(rec_no));
		mv.addObject("r", r);
		System.out.println(r);
		System.out.println(paramMap);

		mv.setViewName("Hire/anoDetail");
		return mv;
	} 

	// 이건 리뷰클릭하면 나오는 에이작스
	@RequestMapping("/Hire/reviewAVG.do")
	public ModelAndView reviewAVG(String ent_no, ModelAndView mv) {
		System.out.println("리뷰용" + ent_no);
		List<Map> r = service.selectReviewList(ent_no);
		/* mv.addObject(service.selectReviewList(ent_no)); */
		mv.addObject("r", r);
		System.out.println(r);
		mv.setViewName("Hire/anoReview");
		return mv;
	}

//	@RequestMapping("/Hire/reviewAVG.do")
//	@ResponseBody
//	public Map<String,Object> reviewAVG(HttpServletRequest request,String ent_no) throws Exception {
//		System.out.println("혹시");
//		System.out.println("서비스 가기전"+ent_no);
//		int ent_no1=Integer.parseInt("ent_no");
//		System.out.println(ent_no1);
////		int ent_no1 = Integer.parseInt(ent_no);
////		System.out.println(ent_no1);
//		Review r=service.selectReviewList(ent_no);
//		System.out.println(r);
//		
//		Map<String, Object> map=new HashMap<String, Object>();
//		map.put("enp_no",ent_no1);
//			
//		return map;
//	}

//		@RequestMapping("/Hire/reviewStar.do")
//	public ModelAndView reviewStar(ModelAndView mv) {
//		mv.addObject("review", service.reviewStar());
////		mv.addObject("review",review);
////		List<map> review = service.reviewStar();
////		System.out.println("satr"+review);
////		mv.addObject("review",review);
//		mv.setViewName("Hire/announcementPage");	
//		
//		System.out.println(mv);
//		return mv;
//		
//	}
	@Autowired
	protected JavaMailSender mailSender;
	@RequestMapping("/Hire/apply.do")
//	public ModelAndView memberApply(ModelAndView mv,  @RequestParam(value = "memNo") int memNo) {
	public String memberApply(HttpServletRequest request, ModelMap mo, HttpSession session,Model model, int memNo, int recNo, String entName)
			throws Exception {
		System.out.println("나오렴");
		System.out.println("나오니?" + memNo);
		System.out.println("나오니?" + recNo);

		Map<String, Object> paramMap = new HashMap<String, Object>();

		int memNo1 = Integer.parseInt(request.getParameter("memNo"));
		paramMap.put("memNo", memNo1);
		int recNo1 = Integer.parseInt(request.getParameter("recNo"));
		paramMap.put("recNo", recNo1);
		String entName1 = request.getParameter("entName");
		paramMap.put("entName", entName1);
		// Support s=service.insertMemberApply(memNo1,recNo1);
		// mv.setViewName("redirect:/");

		System.out.println("이거야이거" + paramMap);

		int result = service.insertMemberApply(paramMap);
		System.out.println("이거야이거2" + paramMap);
		
		///////////////////////////////////////////////
		
//		// 메일 관련 정보
//        String host = "smtp.naver.com";
//        final String username = "dlscjfry2010";       //네이버 이메일 주소중 @ naver.com앞주소만 기재합니다.
//        final String password = "Dsds2010##";   //네이버 이메일 비밀번호를 기재합니다.
//        int port=465;
//        
//        // 메일 내용
//        String recipient = "dlscjfry2010@naver.com";    //메일을 발송할 이메일 주소를 기재해 줍니다.
//        String subject = "JOBNOM";
//        String body = "해당공고로 지원이 완료 되었습니다";
		/* String filename = "src/main/webapp/resources/image/Hire/Kakao.png"; */
//        
//        Properties props = System.getProperties();
//         
//         
//        props.put("mail.smtp.host", host);
//        props.put("mail.smtp.port", port);
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.ssl.enable", "true");
//        props.put("mail.smtp.ssl.trust", host);
		/*
		 * MimeMessage mimeMessage = mailSender.createMimeMessage(); MimeMessageHelper
		 * messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
		 */
//          
//        Session session1 = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
//            String un=username;
//            String pw=password;
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(un, pw);
//            }
//        });
//        session1.setDebug(true); 
//        String mail = "JOBNOM";
//          
//        Message mimeMessage = new MimeMessage(session1);
//        mimeMessage.setFrom(new InternetAddress("dlscjfry2010@naver.com"));
//        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
//        mimeMessage.setSubject(subject);
//        mimeMessage.setText(body);
//        Transport.send(mimeMessage); 
		
		//////////////////////////////////////////
		
		
		////////////////////////////////////
		
		
		
		    
		    String setfrom = "dlscjfry2010@naver.com";         
		    String tomail = "dlscjfry2010@naver.com";    // 받는 사람 이메일
		    String title = "제목";      // 보내는 사람 이메일
		    String content = "내용";  // 보내는 사람 이메일
		    String filename = "resources/image/Hire/pngwing.png";                   // 파일 경로.
		   System.out.println(tomail); 
		    try {     
		      MimeMessage message = mailSender.createMimeMessage();
		      MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		  
		      messageHelper.setFrom(setfrom);   // 보내는사람 생략하거나 하면 정상작동을 안함
		      messageHelper.setTo(tomail);      // 받는사람 이메일
		      messageHelper.setSubject(title);  // 메일제목은 생략이 가능하다
		      messageHelper.setText(content);   // 메일 내용
		         
		      // 파일첨부 
		      FileSystemResource fsr = new FileSystemResource(filename);
		      messageHelper.addAttachment("test2.txt",fsr); 
		      System.out.println("????????===="+fsr);
		        
		      mailSender.send(message);
		    } catch(Exception e){ 
		      System.out.println("용녀용녀"+e);
		    }
		    
		  
		



		return "Hire/support"; 
	}

	// 즐겨찾기 스크립트
//	@RequestMapping("/Hire/favorites.do")
//		public String memberFavorites( HttpServletRequest request, Model model, int memNo, int recNo) throws Exception{
//		System.out.println("나오렴");
//		System.out.println("나오니?"+memNo);
//		System.out.println("나오니?"+recNo);
//		 
//		Map<String, Object> paramMap = new HashMap<String, Object>();
//		
//		int memNo1 = Integer.parseInt(request.getParameter("memNo"));
//		paramMap.put("memNo", memNo1);
//		int recNo1 = Integer.parseInt(request.getParameter("recNo"));
//		paramMap.put("recNo", recNo1);
//		
//		
//		
//		System.out.println(paramMap);
//
//		int result = service.memberFavorites(paramMap);
//		return "Hire/announcementPage";
//	}

//	@RequestMapping("Hire/notFavorites.do")
//	public ModelAndView deleteMember(Interestedrcruitment ir, ModelAndView mv,int memNo, int recNo) {
//
//		System.out.println("오지");
//		int result = service.notFavorites(ir);
//		String msg = "";
//		String loc = "";
//
//		/*
//		 * if (result > 0) { mv.addObject("loginMember",
//		 * service.selectOneMember(m.getUserId())); msg = "회원정보 삭제 송공!"; loc = "/"; }
//		 * else { msg = "회원정보 삭제실패!"; loc = "/member/deleteMember.do?userId=" +
//		 * m.getUserId(); }
//		 */
////		mv.addObject("msg",msg);
////		mv.addObject("loc",loc);
////		mv.setViewName("common/msg");
//		mv.setViewName( "Hire/announcementPage");
//		return mv;
//
//	}
	@RequestMapping("Hire/notFavorites.do")
	public String deleteMember(HttpServletRequest request, Model model, int memNo, int recNo, int openCheck)
			throws Exception {
		System.out.println("오지");
		Map<String, Object> paramMap = new HashMap<String, Object>();

		int memNo1 = Integer.parseInt(request.getParameter("memNo"));
		paramMap.put("memNo", memNo1);
		int recNo1 = Integer.parseInt(request.getParameter("recNo"));
		paramMap.put("recNo", recNo1);
		int openCheck1 = Integer.parseInt(request.getParameter("openCheck"));
		paramMap.put("openCheck", openCheck1);

		int result = service.notFavorites(paramMap);
		System.out.println(result);

		return "Hire/announcementPage";

	}

	// 즐겨찾기 스크립트
	@RequestMapping("/Hire/favorites.do")
	public ModelAndView memberFavorites(ModelAndView mv, HttpServletRequest request, Model model, int memNo, int recNo,
			@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "10") int numPerpage) throws Exception {
		System.out.println("나오렴");
		System.out.println("나오니?" + memNo);
		System.out.println("나오니?" + recNo);

		Map<String, Object> paramMap = new HashMap<String, Object>();

		int memNo1 = Integer.parseInt(request.getParameter("memNo"));
		paramMap.put("memNo", memNo1);
		int recNo1 = Integer.parseInt(request.getParameter("recNo"));
		paramMap.put("recNo", recNo1);

		System.out.println(paramMap);

		int result = service.recFavorites(paramMap);
		List<Recruitment> anolist = service2.anoList(cPage, numPerpage);

		int totalData = service2.selectCount(); /* 이거페이지바 */
		System.out.println("공고페이지바" + totalData);
		mv.addObject("pageBar", PageBarFactory.getPageBar2(totalData, cPage, numPerpage, "favorites.do"));

		mv.addObject("anolist", anolist);
		mv.setViewName("Hire/Interestedrcruitment");
		return mv;
	}

	@RequestMapping("/Hire/reviewSearch.do")
	@ResponseBody
	public String streamAjax(String key) throws IOException {

		// public boolean streamAjax(String userId) throws IOException {
		// public Member streamAjax(String userId) throws IOException {
		// public List<Map> streamAjax(String userId) throws IOException {
		System.out.println("되라");
		System.out.println(key);
		List<Map> list = service.selectOneRecruitment(key);
		System.out.println("되라" + list);

		System.out.println(list);
		// return e!=null?"false":"true"; //이건 위에 String꺼
		// return m!=null?false:true; //이건 위에 불린
		return "Hire/insertReview";

	}

	
	/*
	 * @RequestMapping("/Hire/recSerch.do") public ModelAndView
	 * recSerch(ModelAndView mv, String rec_no) { System.out.println(rec_no);
	 * List<Recruitment> a = service.recSerch(rec_no); System.out.println("이것은"+a);
	 * 
	 * 
	 * 
	 * mv.addObject("r", a); mv.setViewName("Hire/announcementPage"); return mv; }
	 */
	
	


}
