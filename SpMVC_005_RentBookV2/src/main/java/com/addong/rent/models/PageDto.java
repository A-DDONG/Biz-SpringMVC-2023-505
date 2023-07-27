package com.addong.rent.models;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class PageDto {
	
	// builder 패턴으로 객체를 생성할때 기본 변수값 설정하기
	@Builder.Default
	private int pageNum = 1;
	
	private int totalCount; // 데이터의 전체 개수
	private int offsetNum; // 시작페이지 번호
	
	@Builder.Default
	private int limitCount = 10;; // 보여질 데이터개수
	
	private int pageNumCount; // 하단 pagination 에 보여질 번호개수
	
	private int firstPageNum; // 전체데이터의 첫번째 페이지 번호
	private int lastPageNum;
	
	/*
	 * totalCount 가 153이라고 하자
	 * 한 페이지에 10개의 데이터를 보여준다고 할때 계산한 페이지 개수는 ?
	 * 
	 * int(totalCount / 10) => 15 : 1 ~ 15 페이지까지 페이지 번호
	 * 1 페이지 : 0 ~ 9, 15 페이지 : 140 ~ 149
	 * 16 페이지 : 150 ~ 153
	 * 이 예제에서 finalPageNum = 16 이 된다
	 */
	private int finalPageNum; // 전체데이터의 마지막 페이지 계산 결과
	public int getFinalPageNum() {
		if(totalCount < 1) return 0;
		this.finalPageNum = (this.totalCount + (this.limitCount - 1)) / this.limitCount;
		return this.finalPageNum;
	}
	public int getOffSetNum() {
		this.offsetNum = (pageNum - 1) * limitCount;
		return this.offsetNum;
	}
	/*
	 * 14 페이지 선택했을때
	 * listPage : 11 12 13 14 15 16 17 18 19 20
	 */
	public int getFirstPageNum() {
		this.firstPageNum = (int)(pageNum - (limitCount / 2));
		this.firstPageNum = this.firstPageNum < 1 ? 1 : this.firstPageNum;
		return firstPageNum;
	}
	public int getLastPageNum() {
		this.firstPageNum = this.getFirstPageNum();
		this.finalPageNum = this.getFinalPageNum();
		
		this.lastPageNum =  this.firstPageNum + limitCount - 1;
		this.lastPageNum = this.lastPageNum > this.finalPageNum ? this.finalPageNum : this.lastPageNum;
		return lastPageNum;
	}
}
