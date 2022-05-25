package com.globalin.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.globalin.domain.MemberRecVO;
import com.globalin.mapper.MemberRecMapper;
@Service
public class MemberRecServiceImpl implements MemberRecService {
	
	@Autowired
	private MemberRecMapper mapper2;
	
	@Override
	public void register(MemberRecVO mv) {
		mapper2.insert(mv);
			}

	@Override
	public boolean modify(MemberRecVO mv) {
return mapper2.update(mv)==1;
		}



	@Override
	public boolean remove(int idx) {
		return mapper2.delete(idx)==1;
	}

	@Override
	public MemberRecVO get(int idx) {
		return mapper2.read(idx);
	}

	@Override
	public boolean next(MemberRecVO mv) {
	
		return mapper2.changenext(mv)==1;
	}

}
