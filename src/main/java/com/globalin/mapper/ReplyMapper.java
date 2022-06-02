package com.globalin.mapper;

import java.util.List;

import com.globalin.domain.ReplyVO;

public interface ReplyMapper {

	// 댓글 조회
	public List<ReplyVO> readReply(int bno) throws Exception;
	
	// 댓글 작성
	public void registReply(ReplyVO replyVO);
	
	// 댓글 수정
	public void updateReply(ReplyVO replyVO);
	
	// 댓글 삭제
	public void deleteReply(ReplyVO replyVO);
	
	// 댓글 선택
	public List<ReplyVO> selectReply(int rno); 
	
	
}
