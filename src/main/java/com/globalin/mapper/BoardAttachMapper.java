package com.globalin.mapper;

import java.util.List;

import com.globalin.domain.AttachFileVO;

public interface BoardAttachMapper {

	public void insert(AttachFileVO vo);
	
	public void delete(String uuid);
	
	public List<AttachFileVO> findByBno(int bno);

	public AttachFileVO findByUuid(String uuid);
}
