package com.globalin.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.globalin.domain.LikeVO;
import com.globalin.domain.MemberVO;

public interface LikeService {


	public int ltlikecount(LikeVO likevo);
	
	public int ltlikegetinfo(LikeVO likevo);
	
	public void likeinsert(LikeVO likevo);
	
	public void likeupdate(LikeVO likevo);
}
