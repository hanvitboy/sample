package com.globalin.mapper;

import com.globalin.domain.LikeVO;

public interface LikeMapper {

	public int ltlikecount(LikeVO likevo);
		
	public int ltlikegetinfo(LikeVO likevo);
	
	public void likeinsert(LikeVO likevo);
	
	public void likeupdate(LikeVO likevo);
}
