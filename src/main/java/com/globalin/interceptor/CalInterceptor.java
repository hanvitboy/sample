package com.globalin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CalInterceptor extends HandlerInterceptorAdapter {

	    
	@Override
	public boolean preHandle(HttpServletRequest request, 
	    HttpServletResponse response,
	    Object handler) throws Exception {
	        
	    HttpSession session = request.getSession();
	        
	    if(session.getAttribute("login_user") == null) {
	        
	             // 로그인하지 않은 사용자일 경우 로그인 페이지로 이동
	        response.sendRedirect("/controller/loginpage2");
	       
	    }
	        return true;
	}
	}