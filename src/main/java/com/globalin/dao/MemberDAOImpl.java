package com.globalin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.globalin.domain.MemberVO;

@Repository //현재 클래스를 dao빈으로 등록
public class MemberDAOImpl implements MemberDAO{
	
	//Sql session 의존성
	@Inject
	SqlSession sqlSession;

	@Override
	public String loginCheck(MemberVO vo) {
		return sqlSession.selectOne("member.login_check", vo);
	}

}
