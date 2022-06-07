package com.globalin.service;

import java.util.List;

import com.globalin.domain.AttachFileVO;
import com.globalin.domain.BoardAttachVO;

public interface BoardAttachService {
	
	public void insert(AttachFileVO vo);
	
	public void delete(String uuid);
	
	public List<AttachFileVO> findByBno(int bno); 
	
	public AttachFileVO findByUuid(String uuid);
}
