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
		return mapper.readReply(bno);
	}

	@Override
	public void registReply(ReplyVO replyVO) {
		mapper.registReply(replyVO);
	}

	@Override
	public void updateReply(ReplyVO replyVO) {
		mapper.updateReply(replyVO);
	}

	@Override
	public void deleteReply(ReplyVO replyVO) {
		mapper.deleteReply(replyVO);
	}

	@Override
	public List<ReplyVO> selectReply(int rno) {
		return mapper.selectReply(rno);
	}

	

	
}
