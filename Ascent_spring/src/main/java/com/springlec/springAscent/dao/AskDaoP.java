package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.AskDto;

public interface AskDaoP {
		
		// 상품 문의 목록 출력
		public ArrayList<AskDto> list(String userID);
			
		// 상품 문의 입력
		public void write(String askTitle, String askContent, String askImage, String userID);
		
		// 상품 문의 상세
		public AskDto content(int askCode);
			
		// 상품 문의 삭제
		public void delete(int askCode);
			
		// 상품 문의 수정
		public void modify(String askTitle, String askContent, int askCode);

	}


