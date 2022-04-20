package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.CDtoCounsel;

public interface CDaoCounsel {
	
	// 1대1 문의 목록 출력
	public ArrayList<CDtoCounsel> list(String userID);
	
	public void write(String counselType, String counselTitle, String counselContent, String userID);
	
	public CDtoCounsel content(String counselCode);
	
	public void delete(int counselCode);

}
