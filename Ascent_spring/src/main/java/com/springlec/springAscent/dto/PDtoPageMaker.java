package com.springlec.springAscent.dto;

import java.util.ArrayList;

public class PDtoPageMaker {

	// 시작 페이지
	private int startPage;
	// 끝 페이지
	private int endPage;
	// 
	private boolean prev,next;
	
	
	
	
      
	
	

	//source > tostring 
	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public boolean isPrev() {
		return prev;
	}


	public void setPrev(boolean prev) {
		this.prev = prev;
	}


	public boolean isNext() {
		return next;
	}


	public void setNext(boolean next) {
		this.next = next;
	}


	//source > tostring 
	@Override
	public String toString() {
		return "ADtoPageMaker [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ "]";
	}
	
}
