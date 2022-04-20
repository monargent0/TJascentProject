package com.springlec.springAscent.dao;


import org.apache.ibatis.annotations.Param;

import com.springlec.springAscent.dto.UDtoLogin;


public interface UDao {
	// User Page
	public UDtoLogin logIn(String userID, String userPW); // 로그인
	public void signin(String userName,String userID,String userEmail,String userPhone,String userPW, String userBirth,String userGender); // 회원가입
	public void signout(@Param("userID") String userID, @Param("userPW") String userPW); 	// 회원탈퇴
	public String doubleID(String userID); // 회원가입 아이디 중복 확인

	//	public String findID(String userName, String userEmail);
//	public String findPW(String userID ,String userName, String userEmail);
//	public dto userinfo(String userID);
	
	// 관리자 Page
}
