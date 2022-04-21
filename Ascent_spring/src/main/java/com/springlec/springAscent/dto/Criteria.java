package com.springlec.springAscent.dto;

public class Criteria {
		
		// 현재 페이지 수 
		private int pageNum;
		//화면에 보여질 게시글 수 
		private int amount;
		//시작 페이지 
		private int startNum;
		
		// Constructor
		public Criteria() {
		// constructor 생성시 기본 생성자를 호출하여 매개변수를 줘서 매개변수가 가지고 있는 constructor 함수 호출
			this(1,5); // pageNum1 =1,amount=5 
		}
		//기본 생성자 설정 
		public Criteria(int pageNum, int amount) {	//pageNum,amount 매개변수 
			this.pageNum = pageNum;
			this.amount = amount;
			
		}
		// source > to string 
		@Override
		public String toString() {
			return "Criteria [pageNum=" + pageNum + ", startNum=" + startNum + "]";
		}
		// source > getters and setters 
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

		public int getStartNum() {
			return startNum;
		}

		public void setStartNum(int startNum) {
			this.startNum = startNum;
		}

		
		
}
