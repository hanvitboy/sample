package com.globalin.service;

import java.util.List;

import com.globalin.domain.MemberVO;

public interface MemberService {

	
	public void register (MemberVO member);
	
	public MemberVO get(String id);
	
	public boolean modify(MemberVO member);
	
	public boolean remove(String id);
	
	public List<MemberVO> getList();
	
}
