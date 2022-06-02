package com.globalin.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.ReplyVO;
import com.globalin.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {

	private static Logger log = LoggerFactory.getLogger(ReplyServiceImpl.class);
	
	@Autowired
	private ReplyMapper mapper;

	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		log.info("readReply...");
		return mapper.readReply(bno);
	}

	@Override
	public void registReply(ReplyVO replyVO) {
		log.info("registReply...");
		mapper.registReply(replyVO);
	}

	@Override
	public void updateReply(ReplyVO replyVO) {
		log.info("updateReply...");
		mapper.updateReply(replyVO);
	}

	@Override
	public void deleteReply(ReplyVO replyVO) {
		log.info("deleteReply...");
		mapper.deleteReply(replyVO);
	}

	@Override
	public List<ReplyVO> selectReply(int rno) {
		log.info("selectReply...");
		return mapper.selectReply(rno);
	}

	

	
}
