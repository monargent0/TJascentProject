package com.springlec.springAscent.dao;

import org.apache.ibatis.annotations.Param;

import com.springlec.springAscent.dto.UDtoLogin;
import com.springlec.springAscent.dto.UDtoMypage;

//userName userID userEmail userPhone userPW userBirth userGender u_SignDate u_ResignDate
public interface UDao {
	// User Page
	public UDtoLogin logIn(String userID, String userPW); // 로그인
	public void signin(String userName,String userID,String userEmail,String userPhone,String userPW, String userBirth,String userGender); // 회원가입
	public void signout(@Param("userID") String userID, @Param("userPW") String userPW); 	// 회원탈퇴
	public String doubleID(String userID); // 회원가입 아이디 중복 확인
	public String findID(String userName, String userEmail); // 아이디 찾기
	public String findPW(String userID ,String userName, String userEmail); // 비밀번호 찾기
	public UDtoMypage userinfo(String userID); // 마이페이지 회원 정보
	public void usermodify(String userName, String userEmail, String userPhone, String userID); //마이페이지 회원정보 수정
	//public void pwChange(String newPW, String oldPW, String userID); // 비밀번호 변경

	//	public String pwCheck(String userID); // 비밀번호 변경 커맨드에서 사용
	
	
	// 관리자 Page
//	public ArrayList<DDtoU> signinList(); // 가입회원조회
//	public ArrayList<DDtoU> signoutList(); // 탈퇴회원조회
}
