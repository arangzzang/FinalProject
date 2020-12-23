package com.project.jobnom.common.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.project.jobnom.common.model.service.CommonService;
import com.project.jobnom.common.model.vo.Login;

@Controller
@SessionAttributes("commonLogin")
public class CommonController {

	@Autowired
	CommonService service;
	@Autowired
	BCryptPasswordEncoder pwEncoder;
	@Autowired
	private JavaMailSender mailSender;
	
	static int checkNum;
	//로그인
	@RequestMapping("/common/commonLogin")
	public ModelAndView commonLogin(@RequestParam Map login, ModelAndView mv, HttpServletResponse response) {
		Login who=service.commonLogin(login);
		String loc="";
		System.out.println(who);
		if(who!=null) {
			//아이디 기억하기
			if(login.get("loginCheck") != null) {//login.get("remember").equals("on")는 무조건적인 true이기 때문에 checkbox가 check되있지 않으면 nullpoint에러 발생
				Cookie c = new Cookie("loginCheck",who.getMemEmail());
				c.setMaxAge(60*60*24*7);
				c.setPath("/jobnom");
				response.addCookie(c);
				System.out.println("쿠키값true일 때");
				System.out.println(c);
			}else {
				Cookie c = new Cookie("loginCheck","");
				c.setMaxAge(0);
				response.addCookie(c);
				System.out.println("쿠키값false일 때");
				System.out.println(c);
			}
			//로그인 시도 시 암호화된 비밀번호 분기처리
			if(pwEncoder.matches((String)login.get("password"), who.getMemPw())) {
				loc="redirect:/";
				mv.addObject("commonLogin", who);
				mv.setViewName(loc);
			}else {
				loc="common/msg";
				mv.addObject("msg","비밀번호가 맞지않습니다.");
				mv.addObject("loc","/");
				mv.setViewName(loc);
			}
		}else {
			loc="common/msg";
			mv.addObject("msg","이메일이 일치하지 않습니다.");
			mv.addObject("loc","/");
			mv.setViewName(loc);
		}
		return mv;
	}
	//로그아웃
	@RequestMapping("/common/logout")
	public String logout(HttpSession session, SessionStatus ss) {
		
		if(!ss.isComplete()) {
			ss.setComplete();
		}
		if(session != null) {
			session.invalidate();
		}
		return "redirect:/";
	}
	//email중복체크
	@RequestMapping("/checkDuplicate/enrollCommon")
	@ResponseBody
	public String checkDuplicateEmail(String dupli, Model m) throws IOException{
		
		List<Login> list=service.checkDuplicateEmail(dupli);
		m.addAttribute("list",list);
		return list.isEmpty()?"사용 할 수 있는 email입니다.":"사용 할 수 없는 email입니다.";
	}
	//이메일 인증확인
	@RequestMapping("/certification/sendEmail")
	@ResponseBody
	public String sendemail(String mEmail,Model m) {
		
		//인증번호(난수)생성
		Random random = new Random();
		checkNum = random.nextInt(888888) + 111111;
		
		
		//이메일 보내기
		String setFrom = "dkfkd1198@gmail.com";
		String toMail = mEmail;
		String title = "회원가입 인증 이메일 입니다.";
		String content="홈페이지를 방문해 주셔서 감사합니다."+"<br><br>"+"인증번호는"+checkNum+"입니다."+"<br>"+"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		try {
			MimeMessage eMsg = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(eMsg, true, "UTF-8");
             
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            helper.setTo(mEmail);
            eMsg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(mEmail));
            mailSender.send(eMsg);
		}catch(MessagingException e) {
			e.printStackTrace();
		}
		System.out.println("인증번호 : " + checkNum);
		m.addAttribute("cNum",checkNum);
		
		return "/views/common/enroll";
	}
	//인증번호 비교하기
	@RequestMapping("/certification/emailCheck")
	@ResponseBody
	public int emailCheck(int eNum) {
		int result=0;
		if(eNum==0) {//널값일때
			result=0;
		}else if(eNum != checkNum) {//인증번호 값이 같지않을때
			result=2;
		}else {//인증번호 값이 같을때
			result=1;
		}
		return result;
	}
	
	
	
}



