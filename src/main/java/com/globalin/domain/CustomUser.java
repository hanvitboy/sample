package com.globalin.domain;
/*
 * 스프링 시큐리티가 사용자 정보를 userdetails 타입으로밖에 사용을 하지 않기 때문에
 * 우리가 사용하는 클래스 타입을 스프링 시큐리티가 사용 가능한 타입으로 변경해주는 작업이 필요함.
 * 
 * 
 * */

import java.util.ArrayList;
import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomUser extends User{

	private MemberVO member;
	
	@Override
	public String toString() {
		return "CustomUser [member=" + member + "]";
	}

	public MemberVO getMember() {
		return member;
	}

	public void setMember(MemberVO member) {
		this.member = member;
	}

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public CustomUser(MemberVO vo) {
		
		super(vo.getUserid(), vo.getUserpw(), 
				vo.getAuthList().stream()
				.map(auth -> new SimpleGrantedAuthority(auth.getAuth()))
				.collect(Collectors.toList()));
		//java 1.8version 에 추가된 stream api + 화살표 함수 기능
		// authVO 객체를 grantedauthority 객체로 변환함
		//화살표함수? function(auth){함수몸체}  이것은 auth-> ..함수몸체..
		this.member=vo;
	
	}
	
}
