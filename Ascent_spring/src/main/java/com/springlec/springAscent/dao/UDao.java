package com.springlec.springAscent.dao;


import com.springlec.springAscent.dto.UDtoLogin;


public interface UDao {
	public UDtoLogin logIn(String userID, String userPW);
	
}
