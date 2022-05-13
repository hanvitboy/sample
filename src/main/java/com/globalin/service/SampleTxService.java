package com.globalin.service;

public interface SampleTxService {

	//실제로 데이터를 추가해주는 메소드
	//데이터를 추가하려면 mapper를 통해서 해야함.
	//sample1 2 mapper 각각 필요함 2개
	public void addData(String value);
	
}
