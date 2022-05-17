package com.globalin.mapper;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.globalin.domain.MemberVO;

public interface MemberMapper {

	public List<MemberVO> getList();
		
	public void insert(MemberVO member);
	
	public int update(MemberVO member);
	
	public int delete(String id);
	
	public MemberVO read(String id);
	
	public String loginCheck(MemberVO vo, HttpSession session);
	
	public void logout(HttpSession session);
	
}
