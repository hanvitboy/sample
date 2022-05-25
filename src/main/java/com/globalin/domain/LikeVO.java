package com.globalin.domain;

public class LikeVO {
	
	private String ltmid;
	
	private int ltbid;
	
	private int ltlike;
	
	private int count;

	public String getLtmid() {
		return ltmid;
	}

	public void setLtmid(String ltmid) {
		this.ltmid = ltmid;
	}

	public int getLtbid() {
		return ltbid;
	}

	public void setLtbid(int ltbid) {
		this.ltbid = ltbid;
	}

	public int getLtlike() {
		return ltlike;
	}

	public void setLtlike(int ltlike) {
		this.ltlike = ltlike;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "likeVO [ltmid=" + ltmid + ", ltbid=" + ltbid + ", ltlike=" + ltlike + ", count=" + count + "]";
	}
	

}
