package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.AddressDto;


public interface AddressDao {
	//addressCode addressType postcode mainAddress detailAddress extraAddress user_userID
	public ArrayList<AddressDto> adrslist(String userID); // 주소록 리스트
	public void adrswrite(String addressType, String postcode, String mainAddress , String detailAddress, String extraAddress, String user_userID ); // 주소록 추가
	public void adrsdelete(int addressCode); // 주소록 삭제
	
	
}
