package com.globalin.service;

import java.util.List;

import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;
import com.globalin.domain.LikeVO;

public interface BoardService {
	
	// 하나 가져오기
	public BoardVO getpage(int bno) throws Exception;
	
	// 삽입하기
	public void register(BoardVO board);
	
	// 수정하기
	public int modify(BoardVO board);
	
	// 삭제하기
	public boolean remove(int bno);
	
	// 리스트가져오기(임시)
	public List<BoardVO> getList();
	
	// 리스트가져오기 (페이징처리)
	public List<BoardVO> getListPaging(Criteria cri);
	
	// 조회수 체크
	public void boardHit(int bno) throws Exception;
	
	// 전체 게시글 갯수 
	public int getTotal(Criteria cri);
	
	// 좋아요 체크+1
	public int likeTotal(int bno);
	
	// 좋아요 체크-1
	public int likeTotalM(int bno);
	
	// 전체 댓글 갯수
	public int commentTotal(int bno);
}
