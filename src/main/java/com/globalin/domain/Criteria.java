package com.globalin.domain;

// 페이지 정보를 담고 있었는데
// 검색 정보 까지 담도록 수정
public class Criteria {
	
	private int pageNum;
	private int amount;
	//검색 타입 : 제목, 작성자 , 내용, 제목+내용
	//타입이 여러개일 경우 처리가 필요하다.
	//제목 :T, 작성자:w, 내용:c 들어올떄
	//제목 + 내용 tc / 작성자 + 내용 wc
	//전부포함 twc 이렇게온다
	//복합조건일때를 대비해서 문자열을 쪼갠다음 배열로 리턴해준다.
	private String type;
	//검색할 키워드
	private String keyword;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Criteria() {
		//첫페이지번호는1, 기본적으로 한페이지 10개씩
		this.pageNum = 1;
		this.amount = 10;
	}
	
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", type=" + type + ", keyword=" + keyword + "]";
	}

	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	//type 을 쪼개서 문자열 배열로 만들어서 리턴해주는 메소드
	//type = "TWC"
	//String[] typeArr = {"T","W","C"};
	public String[] getTypeArr() {
		String[] result= {};//얘는 널은아님
		if(type == null) {
			//type 널이면 검색 조건이 없다.
			//빈배열을 리턴해준다.
			
		}else {
			//type 널이아니면 검색조건이 하나이상 있다.
			//type을 쪼개서 배열로 만들어준다.
			result = type.split("");
			
		}
		return result;
		//위에것을 한줄로 쓰면 삼항연산자로 return type == null? new String[]{}: type.split("");
	}
	
}
