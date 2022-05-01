package com.springlec.springAscent.dto;

public class Criteria {
		
		// 현재 페이지 번호 
		private int pageNum;
		//화면에 보여질 게시글 수 
		private int amount;
		//스킵 할 게시물 수( (pageNum-1) * amount ) => 3페이지면 2페이지게시물이 스킵되고 보여짐 
	    private int skip;
		
		// Constructor
		public Criteria() {
		// constructor 생성시 기본 생성자를 호출하여 매개변수를 줘서 매개변수가 가지고 있는 constructor 함수 호출
			//this(1,8); 				// 현재페이지 =1, amount = 8, 게시물  8개 ,1~5까지
			this.pageNum =1;
			this.amount = 8;
			this.skip = 0;	 		// 0으로 설정하여 1번 코드부터 보여준다.
		}
		//기본 생성자 설정 
		public Criteria(int pageNum, int amount) {	//pageNum,amount 매개변수 
			this.pageNum = pageNum;
			this.amount = amount;
			this.skip = (pageNum-1) * amount;
		}
		
		// source > to string
		@Override
		public String toString() {
			return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", skip=" + skip + "]";
		}
		// getters and setters 
		
		public int getPageNum() {
			return pageNum;
		}
		public void setPageNum(int pageNum) {
			this.skip = (pageNum-1) * this.amount;
			this.pageNum = pageNum;
		}
		public int getAmount() {
			return amount;
		}
		public void setAmount(int amount) {
			this.skip = (this.pageNum-1) *amount;
			this.amount = amount;
		}
		public int getSkip() {
			return skip;
		}
		public void setSkip(int skip) {
			this.skip = skip;
		}
		

		
		
}
