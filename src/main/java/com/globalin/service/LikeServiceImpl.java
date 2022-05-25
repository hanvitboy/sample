package com.globalin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.LikeVO;
import com.globalin.mapper.LikeMapper;

@Service
public class LikeServiceImpl implements LikeService {
	
	@Autowired
	private LikeMapper mapper;
	
	@Override
	public int ltlikecount(LikeVO likevo) {
		return mapper.ltlikecount(likevo);
	}
	
	@Override
	public int ltlikegetinfo(LikeVO likevo) {
		return mapper.ltlikegetinfo(likevo);
	}
	
	@Override
	public void likeinsert(LikeVO likevo) {
		mapper.likeinsert(likevo);
	}
	
	@Override
	public void likeupdate(LikeVO likevo) {
		mapper.likeupdate(likevo);
	}
}
