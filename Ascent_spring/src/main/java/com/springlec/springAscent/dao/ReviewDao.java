package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.ReviewDto;

public interface ReviewDao {
	
	// 상품 리뷰 목록 출력
	public ArrayList<ReviewDto> list(String userID);
	
	// 상품 리뷰 입력
	public void write(String reviewTitle, String reviewContent, String reviewImage, String userID);
		
	// 상품 리뷰 상세
	public ReviewDto content(int reviewCode);
	

}
