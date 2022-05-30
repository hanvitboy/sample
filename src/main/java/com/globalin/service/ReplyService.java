package com.globalin.service;

import java.util.List;

import com.globalin.domain.ReplyVO;

public interface ReplyService {
	
	// 댓글 조회
	public List<ReplyVO> readReply(int bno) throws Exception;
	
	// 댓글 추가
	public void registReply(ReplyVO replyVO);
	
	// 댓글 수정
	public void updateReply(ReplyVO replyVO);
	
	// 댓글 삭제
	public void deleteReply(ReplyVO replyVO);
	
	// 댓글 선택 
	public ReplyVO selectReply(int rno);
}
