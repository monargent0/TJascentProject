package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.CDtoCounsel;

public interface CDaoCounsel {
	
	// 1대1 문의 목록 출력
	public ArrayList<CDtoCounsel> list(String userID);
	
	// 1대1 문의 입력
	public void write(String counselType, String counselTitle, String counselContent, String userID);
	
	// 1대1 문의 상세
	public CDtoCounsel content(int counselCode);
	
	// 1대1 문의 삭제
	public void delete(int counselCode);
	
	// 1대1 문의 수정
	public void modify(String counselType, String counselTitle, String counselContent, int counselCode);

}
