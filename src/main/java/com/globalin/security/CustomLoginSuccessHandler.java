package com.globalin.security;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

/*
 * 로그인을 처리하다 보면 로그인 성공 이후에 특정한 동작을 하도록 제어하고 싶은 경우
 * admin 계정 로그인 -> admin 페이지로 이동
 * member 계정 로그인 -> member 페이지로 이동하고싶다.
 * 쿠키설정등등
 * 
 * 이런 경우에 AuthenticationSuccessHandler 인터페이스를 구현해서 설정
 * 
 * */


public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
			
			//로그인 성공시 실행되는 메소드
		// 어드민은 어드민으로 멤버는 멤버로 흙은 흙으로
		
		//로그인 성공한 사용자의 역할들을 저장
		
		List<String> roleNames = new ArrayList<String>();
		
		//현재 로그인한 사용자의 권한 알아내는 방법
		for(GrantedAuthority authority : authentication.getAuthorities())
		{
			
			//리스트에 사용자의 권한 하나씩 추가
			roleNames.add(authority.getAuthority());
			
		}
		// 사용자의 역할 목록을 검사해서 역할에 따라 redirect로 맞는 페이지에 보내주면 된다.
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/security/admin");
			return;
		}
	
		if(roleNames.contains("ROLE_MEMBER")) {
			response.sendRedirect("/security/member");
			return;
		}
		//여기까지 오면 아무 권한도 없다.
		response.sendRedirect("/");
	}

}
