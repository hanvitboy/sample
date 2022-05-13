package com.globalin.service;






import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.globalin.domain.CustomUser;
import com.globalin.domain.MemberVO;
import com.globalin.mapper.MemberMapper;

//이 클래스는 스프링 시큐리티의 유저 정보를 (인증,권한)
public class CustomUserDetailService implements UserDetailsService{

	private Logger log = LoggerFactory.getLogger(CustomUserDetailService.class);
	
	@Autowired
	private MemberMapper mapper;
	
	
	/*
	 * uds 는 loaduserbyusernmae이라는 하나의 추상메서드를 가지고이
	 * 리턴타입이 org.springframework.core.userdetails.userdetails
	 *스프링에서 취급하는 사용자 정보객체는 오직 userdetails 타입이다.
	 *우리가 만든 사용자정보객체는 membervo 타입이다
	 * 그래서 우리가 만든 사용자 정보 객체를 스프링 시큐리티 가사용할 수있도록
	 * membervo 타입을 userdetails 타입으로 변환하는 작업이 필요하다
	 * 1)memberVO 클래스를 userdetails 인터페이스를 구현하도록 하는 방법
	 * 2)제3의 클래스를 이용해서 membervo클래스를 수정하지 않고 하는 방법이있다.
	 * */
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("Load User By UserName :" + username);
		
		//username으로 member 객체 가져오기
		MemberVO vo = mapper.read(username);
		
		log.warn("queried by mapper: " + vo);
		
		//매퍼가 vo를 가져왔으면 MemberVO를 스프링 시큐리티가 사용하는 타입으로 변경
		//vo를 가져오지 못했으면 그대로 null 리턴
		
		return vo == null? null : new CustomUser(vo);
	}

}
