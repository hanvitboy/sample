package com.globalin.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.globalin.mapper.Sample1Mapper;
import com.globalin.mapper.Sample2Mapper;

@Service
public class SampleTxServiceImpl implements SampleTxService {

	//로그
	
	private Logger log = LoggerFactory.getLogger(SampleTxServiceImpl.class);
	
	
	@Autowired
	private Sample1Mapper mapper1;
	
	@Autowired
	private Sample2Mapper mapper2;

	@Transactional //이 메소드에 트랜잭션 처리를 하겠다. 예외발생하거나 실패시 없던일로 해줄게
	@Override
	public void addData(String value) {
		
		log.info("mapper1.....");
		mapper1.insertCol1(value);
		
		log.info("mapper2....");
		mapper2.insertCol2(value);
	
		log.info("end.......");
		
		//우리가 원하는 결과는 하나가 안되면 다 안되거나
		// 다되거나 atomicity
	}

}
