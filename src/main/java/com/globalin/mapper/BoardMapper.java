package com.globalin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;

public interface BoardMapper {
//primarykey 설정한 컬럼은 오라클 데이터베이스에서 인덱스라는 객체를 생성하는데
//인덱스는 해당 컬럼을 기준으로 미리 정렬이 되어있음
//select 조건에 인덱스가 설정된 컬럼을 사용하면 정렬 효과를 사용할 수 있다.
	//@Select("select * from tbl_board where bno > 0 ")
	public List<BoardVO> getList();
	
	//페이지 처리된 만큼 가져오기
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	public void insert(BoardVO board);
	
	public void insertSelectKey(BoardVO board);
	
	public int update(BoardVO board);
	
	public int delete(int bno);
	
	public BoardVO read(int bno);
	
	//총저장되어있는 board 갯수 구하기
	public int getTotalCount(Criteria cri);
	
	//게시물의 댓글 수 업데이트 하기
	public void updateReplyCnt(@Param("bno") int bno,
					@Param("amount") int amount);
	
}
