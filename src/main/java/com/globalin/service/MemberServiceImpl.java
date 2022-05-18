package com.globalin.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.MemberVO;
import com.globalin.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
		
	private static Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Override
	public void register(MemberVO member) {
		log.info("regist..: " +member);
		mapper.insert(member);
			}

	@Override
	public MemberVO get(String id) {
		log.info("get..");
		return mapper.read(id);
	}

	@Override
	public boolean modify(MemberVO member) {
		log.info("modify..");
		return mapper.update(member)==1;
	}

	@Override
	public boolean remove(String id) {
		log.info("delete..");
		return mapper.delete(id)==1;
	}

	@Override
	public List<MemberVO> getList() {
		log.info("allmember.."); 
		return mapper.getList();
	}

	@Override
	public MemberVO login(String id, String pw) {
		log.info("login..");
		return mapper.login(id, pw);
	}
	@Override
	public MemberVO findpw(String id, String name, String gender) {
		log.info("findpw..오타 난대로 쓰는거봐 우웩");
		return mapper.findpw(id, name, gender);
	}

}
