package com.globalin.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.AttachFileVO;
import com.globalin.domain.BoardAttachVO;
import com.globalin.mapper.BoardAttachMapper;

@Service
public class BoardAttachServiceImpl implements BoardAttachService {

	private static Logger log = LoggerFactory.getLogger(BoardAttachServiceImpl.class);
	
	@Autowired
	private BoardAttachMapper mapper;

	@Override
	public void insert(AttachFileVO vo) {
		mapper.insert(vo);
		
	}

	@Override
	public void delete(String uuid) {
		mapper.delete(uuid);
		
	}

	@Override
	public List<AttachFileVO> findByBno(int bno) {
		return mapper.findByBno(bno);
	}

	@Override
	public AttachFileVO findByUuid(String uuid) {
		return mapper.findByUuid(uuid);
	}

	

}
