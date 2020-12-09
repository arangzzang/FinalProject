package com.project.jobnom.common.intercepter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginIntercepter extends HandlerInterceptorAdapter{

//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//
//		HttpSession session = request.getSession();
//		
//		ModelMap mdMap= modelAndView.getModelMap();
//		
//		Object login = mdMap.get("Login");
//		System.out.println(login);
//		if(login != null) {
//			session.setAttribute("remember", login);
//		}
//		
//		if(request.getParameter("remember") != null) {
//			Cookie loginCookie = new Cookie("loginCookie",session.getId());
//			loginCookie.setPath("/");
//			loginCookie.setMaxAge(60*60*24*7);	
//			response.addCookie(loginCookie);
//		}
//		
//		Object dest= session.getAttribute("dest");
//		response.sendRedirect(dest != null ? (String)dest:"/");
//		
//		
//		super.postHandle(request, response, handler, modelAndView);
//	}

	
}
