package com.globalin.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.globalin.domain.MemberVO;

public interface MemberService {

	
	public void register (MemberVO member);
	
	public MemberVO get(String id);
	
	public boolean modify(MemberVO member);
	
	public boolean remove(String id);
	
	public List<MemberVO> getList();
	
	public MemberVO login(String id,String pw);
	
	public MemberVO findpw(String id,String name,String gender);	
	
}
