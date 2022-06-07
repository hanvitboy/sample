package com.globalin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.globalin.domain.BoardAttachVO;
import com.globalin.domain.BoardVO;
import com.globalin.domain.Criteria;
import com.globalin.domain.LikeVO;

public interface BoardAttachMapper {

	public void insert(BoardAttachVO vo);
	
	public void delete(String uuid);
	
	public List<BoardAttachVO> findByBno(int bno);
}
