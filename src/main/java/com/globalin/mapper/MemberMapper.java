package com.globalin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.globalin.domain.MemberVO;

public interface MemberMapper {

	public List<MemberVO> getList();
		
	public void insert(MemberVO member);
	
	public int update(MemberVO member);
	
	public int delete(String id);
	
	public MemberVO read(String id);
	
	public MemberVO login(@Param("id")String id, @Param("pw")String pw);
	
	public MemberVO findpw(@Param("id")String id, @Param("name")String name, @Param("gender")String gender);
	
}
