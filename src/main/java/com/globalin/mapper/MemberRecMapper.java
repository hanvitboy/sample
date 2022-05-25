package com.globalin.mapper;


import com.globalin.domain.MemberRecVO;

public interface MemberRecMapper {

	
	public void insert(MemberRecVO mv);
	
	public int update(MemberRecVO mv);
	
	public int delete(int idx);
	
	public MemberRecVO read(int idx);
	
	public int changenext(MemberRecVO mv);
}
