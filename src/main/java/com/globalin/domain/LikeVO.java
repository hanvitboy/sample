package com.globalin.domain;

public class LikeVO {
	
	private String itmid;
	
	private int itbid;
	
	private int itlike;
	
	private int count;

	public String getItmid() {
		return itmid;
	}

	public void setItmid(String itmid) {
		this.itmid = itmid;
	}

	public int getItbid() {
		return itbid;
	}

	public void setItbid(int itbid) {
		this.itbid = itbid;
	}

	public int getItlike() {
		return itlike;
	}

	public void setItlike(int itlike) {
		this.itlike = itlike;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "likeVO [itmid=" + itmid + ", itbid=" + itbid + ", itlike=" + itlike + ", count=" + count + "]";
	}
	

}
