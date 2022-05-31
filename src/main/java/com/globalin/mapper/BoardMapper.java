package com.globalin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;
import com.globalin.domain.LikeVO;

public interface BoardMapper {

	// 하나 가져오기
	public BoardVO getpage(int bno);

	// 삽입하기
	public void insert(BoardVO board);

	// 수정하기
	public int update(BoardVO board);

	// 삭제하기
	public int delete(int bno);

	// 리스트가져오기
	public List<BoardVO> getList();
	
	// 리스트가져오기(페이징 처리)
	public List<BoardVO> getListPaging(Criteria cri);
	
	// 조회수 체크
	public void boardHit(int bno) throws Exception;

	// 전체 게시글 갯수 
	public int getTotal(Criteria cri);
	
	// 전체 좋아요 갯수 +1
	public int likeTotal(int bno);
	
	// 전체 좋아요 갯수 +1
	public int likeTotalM(int bno);
	
	// 전체 댓글 갯수
	public int commentTotal(int bno);
}
