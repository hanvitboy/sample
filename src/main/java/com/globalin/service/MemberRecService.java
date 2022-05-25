package com.globalin.service;


import com.globalin.domain.MemberRecVO;

public interface MemberRecService {

	public void register (MemberRecVO mv);
	
	public boolean modify (MemberRecVO mv);
	
	public boolean remove(int idx);
	
	public MemberRecVO get(int idx);
	
}
