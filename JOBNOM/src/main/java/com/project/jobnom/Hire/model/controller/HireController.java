package com.project.jobnom.Hire.model.controller;

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
import com.project.jobnom.enterprise.model.vo.Enterprise;
import com.project.jobnom.member.model.vo.Member;


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
		System.out.println("re 머냐" + re);
		
		//여긴회원정보만 보여주는곳
		System.out.println(memNo);
		List<Map> m = service.MemberList(memNo);
		mv.addObject("m", m);
		
		System.out.println("머지" + m);
		
		//회원맞춤 스와이프 추천 공고
		List<Map> fitM = service.MemberFitList(memNo);
		System.out.println("fitM"+fitM);
		mv.addObject("fitM", fitM);
 
		// 페이징바
		int totalData = service.selectCount(); /* 이거페이지바 */
		System.out.println("페이지바" + totalData);
		mv.addObject("pageBar", PageBarFactory.getPageBar(totalData, cPage, numPerpage, memNo, "HireHome.do"));
		mv.addObject("totalData", totalData);
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
		int totalDataSu = service.selectSuppertCount(memNo); // 이건 지원한 공고 갯수
		int totalDataIn = service.selectInterestedrcruitmentCount(memNo); // 이건 즐겨찾기 갯수
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
		int totalDataSu = service.selectSuppertCount(memNo); // 이건 지원한 공고 갯수
		int totalDataIn = service.selectInterestedrcruitmentCount(memNo); // 이건 즐겨찾기 갯수
		mv.addObject("totalDataSu", totalDataSu);
		mv.addObject("totalDataIn", totalDataIn);

		mv.addObject("pageBar", PageBarFactory.getPageBar4(totalDataIn, cPage, numPerpage, memNo, "HireFavorites.do"));
		mv.setViewName("Hire/HireFavorites");
		return mv;
	}

	@RequestMapping("/Hire/HireAnnouncement.do")
	public ModelAndView HireAnnouncement(ModelAndView mv) {
	
		 
		mv.setViewName("Hire/HireAnnouncement");
		return mv;

	
	}

	@RequestMapping("/Hire/insertReview2.do")
	public String insertReview2(HttpServletRequest request) throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		String ent_no = request.getParameter("ent_no"); //기업번호
		paramMap.put("ent_no", ent_no);
		String review_title = request.getParameter("review_title"); //기업 타이틀
		paramMap.put("review_title", review_title);
		String mem_no = request.getParameter("mem_no"); //멤버번호
		paramMap.put("mem_no", mem_no);
		String review_contents = request.getParameter("review_contents"); //리뷰내용
		paramMap.put("review_contents", review_contents);
		String review_satisfaction = request.getParameter("review_satisfaction"); //사내만족도
		paramMap.put("review_satisfaction", review_satisfaction);
		String review_welfare = request.getParameter("review_welfare"); //복지 및 급여평점
		paramMap.put("review_welfare", review_welfare);
		String review_promotion = request.getParameter("review_promotion"); //승진 기회 및 가능성 평점
		paramMap.put("review_promotion", review_promotion);
		String review_executive = request.getParameter("review_executive"); //경영진 평점
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
		System.out.println("로고"+r);
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


	@Autowired
	protected JavaMailSender mailSender;
	@RequestMapping("/Hire/apply.do")
//	public ModelAndView memberApply(ModelAndView mv,  @RequestParam(value = "memNo") int memNo) {
	public ModelAndView memberApply(ModelAndView mv,HttpServletRequest request, ModelMap mo, HttpSession session,Model model, int memNo, int recNo, String entName)
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

		int result = service.insertMemberApply(paramMap); //지원하기 INSERT구문
		
		List<Map> applyM= service.selectMemberApply(paramMap);
		System.out.println("이거야이거2" + applyM);
		
		
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
		
		
		
		    
		    String setfrom = "dlscjfry2010@naver.com";         //인사담당자한테 발송되는 이메일
		    String tomail = "dlscjfry2010@naver.com";    // 받는 사람 이메일
		    String title = 
		    		"JOBNOM을 통한 이력서가 도착했습니다 ";      // 제목
		    String content = 
		    		"안녕하세요."
				    		+ "잡놉입니다"
				    		+ "이력서를 확인하고 채용을 컴토바랍니다";   // 내용
		    
		    String setfrom2 = "dlscjfry2010@naver.com";     //이건 지원한 회원한테 보내는 이메일    
		    String tomail2 = "inhajun1995@gmail.com";    // 받는 사람 이메일
		    String title2 = 
		    		"JOBNOM을 통한 이메일 지원 완료 ";      // 제목
		    String content2 = 
		    		"안녕하세요."
				    		+ "잡놉입니다."
				    		+ "지원한 공고는 마이페이지에서 조회가 가능하며 마이페이지에 저장된 이력서 기준"
				    		+ "담당자에게 이메일을 통한 이메일 발송을 완료 하였습니다."
				    		+ "JOBNOM은 개인정보처리방침에 의거 개인정보를 JOBNOM 이외에 사용을 하지 않습니다."
				    		+ "-기타 문의 사항 및 개선 사항은 잡놈고객관리팀으로 연락바랍니다-"
				    		+ "당신이 취업하는 그날까지 JOBNOM은 여러분을 응원합니다."
				    		+ "대한 민국의 밝은 내일을 위해! 고용노동부에서의 취업 프로그램등을"
				    		+ "확인하세요 'http://www.moel.go.kr/index.do'";
		    
		    
		    String filename = "C:\\git\\FinalProject\\JOBNOM\\src\\main\\webapp\\resources\\image\\Hire\\ll.png";                   // 파일 경로.
		    String filename2 = "C:\\git\\FinalProject\\JOBNOM\\src\\main\\webapp\\resources\\image\\Hire\\ll.png";                   // 파일 경로.

		    try {     
		    //인사담당자용
		      MimeMessage message = mailSender.createMimeMessage();
		      MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		      
		     //회원용
		      MimeMessage message2 = mailSender.createMimeMessage();
		      MimeMessageHelper messageHelper2 = new MimeMessageHelper(message2, true, "UTF-8");
		  //인사담당자한테 보내짐
		      messageHelper.setFrom(setfrom);   // 보내는사람 생략하거나 하면 정상작동을 안함
		      messageHelper.setTo(tomail);      // 받는사람 이메일
		      messageHelper.setSubject(title);  // 메일제목은 생략이 가능하다
		      messageHelper.setText(content);   // 메일 내용
		  //회원한테 보내짐
		      messageHelper2.setFrom(setfrom2);   // 보내는사람 생략하거나 하면 정상작동을 안함
		      messageHelper2.setTo(tomail2);      // 받는사람 이메일
		      messageHelper2.setSubject(title2);  // 메일제목은 생략이 가능하다
		      messageHelper2.setText(content2);   // 메일 내용
		      
		      // 파일첨부  
		      FileSystemResource fsr = new FileSystemResource(filename);
		      messageHelper.addAttachment("ll.png",fsr); 
		      System.out.println("????????===="+fsr);
		   // 파일첨부  
		      FileSystemResource fsr2 = new FileSystemResource(filename2);
		      messageHelper2.addAttachment("ll.png",fsr2); 
		      System.out.println("????????===="+fsr2);
		         
		      mailSender.send(message);  
		      mailSender.send(message2); 
		    } catch(Exception e){ 
		      System.out.println("용녀용녀"+e);
		    }
		    
		    mv.addObject("applyM",applyM);
		    mv.setViewName("Hire/support");
		    return mv;

			/* return "Hire/support"; */
	}


	

	@RequestMapping("Hire/notFavorites.do")
	public ModelAndView deleteMember(ModelAndView mv, @RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "10") int numPerpage, HttpServletRequest request, Model model, int memNo, int recNo, int openCheck,int anoNum)
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
		
		//////////////////////////////////////////
		List<Recruitment> anolist = service2.anoList2(anoNum,cPage, numPerpage);

		int totalData = service.selectCount(); /* 이거페이지바 */
	
		mv.addObject("pageBar", PageBarFactory.getPageBar2(totalData, cPage, numPerpage, "notFavorites.do"));
		
		mv.addObject("anolist", anolist);
		mv.setViewName("Hire/announcementPage");
		return mv;

	}
 
	// 즐겨찾기 스크립트
	@RequestMapping("/Hire/favorites.do")
	public ModelAndView memberFavorites(ModelAndView mv, HttpServletRequest request, Model model, int memNo, int recNo,int anoNum,
			@RequestParam(value = "cPage", defaultValue = "1") int cPage,
			@RequestParam(value = "numPerpage", defaultValue = "10") int numPerpage) throws Exception {
		System.out.println("나오렴");
		System.out.println("나오니?" + memNo);
		System.out.println("나오니?" + recNo);
		System.out.println("anoNum?" + anoNum);

		Map<String, Object> paramMap = new HashMap<String, Object>();

		int memNo1 = Integer.parseInt(request.getParameter("memNo"));
		paramMap.put("memNo", memNo1);
		int recNo1 = Integer.parseInt(request.getParameter("recNo"));
		paramMap.put("recNo", recNo1);

		System.out.println(paramMap);

		int result = service.recFavorites(paramMap);
		
		List<Recruitment> anolist = service2.anoList2(anoNum,cPage, numPerpage);
		System.out.println("anolist리스트" + anolist);

		int totalData = service2.selectCount(); /* 이거페이지바 */
		System.out.println("공고페이지바" + totalData);
		mv.addObject("pageBar", PageBarFactory.getPageBar2(totalData, cPage, numPerpage, "favorites.do"));

		mv.addObject("anolist", anolist);
		mv.setViewName("Hire/announcementPage");
		return mv;
	}

	@RequestMapping("/Hire/reviewSearch.do")
	@ResponseBody
	public String streamAjax(ModelAndView mv,String key) throws Exception {

		System.out.println("되라");
		System.out.println(key);
		List<Enterprise> list = service.selectOneRecruitment(key);
		System.out.println("되라" + list);
		System.out.println(list);
		String csv="";
		for(int i=0;i<list.size();i++) {
			if(i!=0)  csv+=",";
			csv+=list.get(i).getEntName();
		
		}
		System.out.println(csv);

		return csv;
		
		/* return csv!=null?"true":"false"; */
	}

	@RequestMapping("/Hire/reviewSearch2.do")
	@ResponseBody
	public String streamAjax2(ModelAndView mv,String key) throws Exception {

		System.out.println("되라");
		System.out.println(key);
		List<Enterprise> list = service.reviewSearch2(key);
		System.out.println("되라" + list);
		System.out.println(list);
		String csv2="";
		for(int i=0;i<list.size();i++) {
			if(i!=0)  csv2+=",";
			csv2+=list.get(i).getEntNo();
		
		}
		System.out.println(csv2);

		return csv2;
	}
	
	@RequestMapping("/Hire/reviewSearch3.do")
	@ResponseBody
	public String streamAjax3(ModelAndView mv,String key) throws Exception {

		System.out.println("되라");
		Enterprise list = service.reviewSearch3(key);
		System.out.println("세번쨰" + list);
		

		return list!=null?"false":"true";
	}

	@RequestMapping("/Hire/swiper.do")
	public ModelAndView swiper( ModelAndView mv,String rec_no,String rec_category, HttpServletRequest request) throws Exception {
		System.out.println("혹시");
		System.out.println("??"+rec_no);
		System.out.println("??"+rec_category);
		List<Recruitment> r = service.swiper(rec_no);
		System.out.println("로고"+r);
		
		
		 List<Member> m = service.membercate2(rec_category);
		mv.addObject("fitM",r);
		mv.addObject("m",m);
		System.out.println("ss"+m);
		
	
		mv.setViewName("Hire/findingMeDetail");
		return mv;
	} 
	


}
